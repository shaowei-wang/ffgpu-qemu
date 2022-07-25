/*
 * QEMU FFGPU Virtual Device
 *
 * Copyright (c) 2017-2020 ffgpu.org
 *
 * Permission is hereby granted, free of charge, to any person obtaining a
 * copy of this software and associated documentation files (the "Software"),
 * to deal in the Software without restriction, including without limitation
 * the rights to use, copy, modify, merge, publish, distribute, sublicense,
 * and/or sell copies of the Software, and to permit persons to whom the
 * Software is furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
 * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
 * DEALINGS IN THE SOFTWARE.
 */

#include "qemu/osdep.h"
#include "qemu/units.h"
#include "hw/pci/pci.h"
#include "hw/pci/msi.h"
#include "qemu/timer.h"
#include "qemu/module.h"
#include "qapi/visitor.h"
#include "ui/console.h"

#include "dbusif.h"
#include "ffgpudev.h"

#define TYPE_PCI_FFGPU_DEVICE "ffgpu"
#define FFGPU(obj) OBJECT_CHECK(FFGPUState, obj, TYPE_PCI_FFGPU_DEVICE)
#define PCI_DEVICE_ID_FFGPU 0x1e1e

static void ffgpu_update_display(void *opaque)
{
    FFGPUState *ffgpu = opaque;
    DisplaySurface *surface = qemu_console_surface(ffgpu->con);

    qemu_flush_coalesced_mmio_buffer();

    if (surface_bits_per_pixel(surface) == 0) {
        /* nothing to do */
    } else {
            uint8_t *d = surface_data(surface);
            int w = surface_width(surface) * surface_bytes_per_pixel(surface);
            int h = surface_height(surface);
            int i;

            for (i = 0; i < h; i++) {
                memset(d, 0xFF, w);
                d += surface_stride(surface);
            }
            dpy_gfx_update_full(ffgpu->con);
    }
}

static const GraphicHwOps ffgpu_hw_ops = {
    .gfx_update  = ffgpu_update_display,
};

static void pci_ffgpu_realize(PCIDevice *pdev, Error **errp) {
    FFGPUState *ffgpu = FFGPU(pdev);
    init_dbus_intf(ffgpu);

    ffgpu->con = graphic_console_init(DEVICE(pdev), 0, &ffgpu_hw_ops, ffgpu);
    qemu_console_resize(ffgpu->con, 1920, 1080);
}

static void pci_ffgpu_uninit(PCIDevice *pdev) {
    FFGPUState *ffgpu = FFGPU(pdev);
    deinit_dbus_intf(ffgpu);
}

static void ffgpu_instance_init(Object *obj) {
}

static void ffgpu_instance_finalize(Object *obj) {
}

static void ffgpu_class_init(ObjectClass *class, void *data) {
    DeviceClass *dc = DEVICE_CLASS(class);
    PCIDeviceClass *k = PCI_DEVICE_CLASS(class);

    k->realize = pci_ffgpu_realize;
    k->exit = pci_ffgpu_uninit;
    k->vendor_id = PCI_VENDOR_ID_QEMU;
    k->device_id = PCI_DEVICE_ID_FFGPU;
    k->revision = 0x0;
    k->class_id = PCI_CLASS_DISPLAY_3D;
    set_bit(DEVICE_CATEGORY_DISPLAY, dc->categories);
}

static void pci_ffgpu_register_types(void) {
    static InterfaceInfo interfaces[] = {
        {INTERFACE_PCIE_DEVICE},
        {},
    };
    static const TypeInfo ffgpu_info = {
        .name = TYPE_PCI_FFGPU_DEVICE,
        .parent = TYPE_PCI_DEVICE,
        .instance_size = sizeof(FFGPUState),
        .instance_init = ffgpu_instance_init,
        .instance_finalize = ffgpu_instance_finalize,
        .class_init = ffgpu_class_init,
        .interfaces = interfaces,
    };

    type_register_static(&ffgpu_info);
}
type_init(pci_ffgpu_register_types);
