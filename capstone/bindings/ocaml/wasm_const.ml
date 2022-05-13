(* For Capstone Engine. AUTO-GENERATED FILE, DO NOT EDIT [wasm_const.ml] *)

let _WASM_OP_INVALID = 0;;
let _WASM_OP_NONE = 1;;
let _WASM_OP_INT7 = 2;;
let _WASM_OP_VARUINT32 = 3;;
let _WASM_OP_VARUINT64 = 4;;
let _WASM_OP_UINT32 = 5;;
let _WASM_OP_UINT64 = 6;;
let _WASM_OP_IMM = 7;;
let _WASM_OP_BRTABLE = 8;;
let _WASM_INS_UNREACHABLE = 0x0;;
let _WASM_INS_NOP = 0x1;;
let _WASM_INS_BLOCK = 0x2;;
let _WASM_INS_LOOP = 0x3;;
let _WASM_INS_IF = 0x4;;
let _WASM_INS_ELSE = 0x5;;
let _WASM_INS_END = 0xb;;
let _WASM_INS_BR = 0xc;;
let _WASM_INS_BR_IF = 0xd;;
let _WASM_INS_BR_TABLE = 0xe;;
let _WASM_INS_RETURN = 0xf;;
let _WASM_INS_CALL = 0x10;;
let _WASM_INS_CALL_INDIRECT = 0x11;;
let _WASM_INS_DROP = 0x1a;;
let _WASM_INS_SELECT = 0x1b;;
let _WASM_INS_GET_LOCAL = 0x20;;
let _WASM_INS_SET_LOCAL = 0x21;;
let _WASM_INS_TEE_LOCAL = 0x22;;
let _WASM_INS_GET_GLOBAL = 0x23;;
let _WASM_INS_SET_GLOBAL = 0x24;;
let _WASM_INS_I32_LOAD = 0x28;;
let _WASM_INS_I64_LOAD = 0x29;;
let _WASM_INS_F32_LOAD = 0x2a;;
let _WASM_INS_F64_LOAD = 0x2b;;
let _WASM_INS_I32_LOAD8_S = 0x2c;;
let _WASM_INS_I32_LOAD8_U = 0x2d;;
let _WASM_INS_I32_LOAD16_S = 0x2e;;
let _WASM_INS_I32_LOAD16_U = 0x2f;;
let _WASM_INS_I64_LOAD8_S = 0x30;;
let _WASM_INS_I64_LOAD8_U = 0x31;;
let _WASM_INS_I64_LOAD16_S = 0x32;;
let _WASM_INS_I64_LOAD16_U = 0x33;;
let _WASM_INS_I64_LOAD32_S = 0x34;;
let _WASM_INS_I64_LOAD32_U = 0x35;;
let _WASM_INS_I32_STORE = 0x36;;
let _WASM_INS_I64_STORE = 0x37;;
let _WASM_INS_F32_STORE = 0x38;;
let _WASM_INS_F64_STORE = 0x39;;
let _WASM_INS_I32_STORE8 = 0x3a;;
let _WASM_INS_I32_STORE16 = 0x3b;;
let _WASM_INS_I64_STORE8 = 0x3c;;
let _WASM_INS_I64_STORE16 = 0x3d;;
let _WASM_INS_I64_STORE32 = 0x3e;;
let _WASM_INS_CURRENT_MEMORY = 0x3f;;
let _WASM_INS_GROW_MEMORY = 0x40;;
let _WASM_INS_I32_CONST = 0x41;;
let _WASM_INS_I64_CONST = 0x42;;
let _WASM_INS_F32_CONST = 0x43;;
let _WASM_INS_F64_CONST = 0x44;;
let _WASM_INS_I32_EQZ = 0x45;;
let _WASM_INS_I32_EQ = 0x46;;
let _WASM_INS_I32_NE = 0x47;;
let _WASM_INS_I32_LT_S = 0x48;;
let _WASM_INS_I32_LT_U = 0x49;;
let _WASM_INS_I32_GT_S = 0x4a;;
let _WASM_INS_I32_GT_U = 0x4b;;
let _WASM_INS_I32_LE_S = 0x4c;;
let _WASM_INS_I32_LE_U = 0x4d;;
let _WASM_INS_I32_GE_S = 0x4e;;
let _WASM_INS_I32_GE_U = 0x4f;;
let _WASM_INS_I64_EQZ = 0x50;;
let _WASM_INS_I64_EQ = 0x51;;
let _WASM_INS_I64_NE = 0x52;;
let _WASM_INS_I64_LT_S = 0x53;;
let _WASM_INS_I64_LT_U = 0x54;;
let _WASM_INS_I64_GT_U = 0x56;;
let _WASM_INS_I64_LE_S = 0x57;;
let _WASM_INS_I64_LE_U = 0x58;;
let _WASM_INS_I64_GE_S = 0x59;;
let _WASM_INS_I64_GE_U = 0x5a;;
let _WASM_INS_F32_EQ = 0x5b;;
let _WASM_INS_F32_NE = 0x5c;;
let _WASM_INS_F32_LT = 0x5d;;
let _WASM_INS_F32_GT = 0x5e;;
let _WASM_INS_F32_LE = 0x5f;;
let _WASM_INS_F32_GE = 0x60;;
let _WASM_INS_F64_EQ = 0x61;;
let _WASM_INS_F64_NE = 0x62;;
let _WASM_INS_F64_LT = 0x63;;
let _WASM_INS_F64_GT = 0x64;;
let _WASM_INS_F64_LE = 0x65;;
let _WASM_INS_F64_GE = 0x66;;
let _WASM_INS_I32_CLZ = 0x67;;
let _WASM_INS_I32_CTZ = 0x68;;
let _WASM_INS_I32_POPCNT = 0x69;;
let _WASM_INS_I32_ADD = 0x6a;;
let _WASM_INS_I32_SUB = 0x6b;;
let _WASM_INS_I32_MUL = 0x6c;;
let _WASM_INS_I32_DIV_S = 0x6d;;
let _WASM_INS_I32_DIV_U = 0x6e;;
let _WASM_INS_I32_REM_S = 0x6f;;
let _WASM_INS_I32_REM_U = 0x70;;
let _WASM_INS_I32_AND = 0x71;;
let _WASM_INS_I32_OR = 0x72;;
let _WASM_INS_I32_XOR = 0x73;;
let _WASM_INS_I32_SHL = 0x74;;
let _WASM_INS_I32_SHR_S = 0x75;;
let _WASM_INS_I32_SHR_U = 0x76;;
let _WASM_INS_I32_ROTL = 0x77;;
let _WASM_INS_I32_ROTR = 0x78;;
let _WASM_INS_I64_CLZ = 0x79;;
let _WASM_INS_I64_CTZ = 0x7a;;
let _WASM_INS_I64_POPCNT = 0x7b;;
let _WASM_INS_I64_ADD = 0x7c;;
let _WASM_INS_I64_SUB = 0x7d;;
let _WASM_INS_I64_MUL = 0x7e;;
let _WASM_INS_I64_DIV_S = 0x7f;;
let _WASM_INS_I64_DIV_U = 0x80;;
let _WASM_INS_I64_REM_S = 0x81;;
let _WASM_INS_I64_REM_U = 0x82;;
let _WASM_INS_I64_AND = 0x83;;
let _WASM_INS_I64_OR = 0x84;;
let _WASM_INS_I64_XOR = 0x85;;
let _WASM_INS_I64_SHL = 0x86;;
let _WASM_INS_I64_SHR_S = 0x87;;
let _WASM_INS_I64_SHR_U = 0x88;;
let _WASM_INS_I64_ROTL = 0x89;;
let _WASM_INS_I64_ROTR = 0x8a;;
let _WASM_INS_F32_ABS = 0x8b;;
let _WASM_INS_F32_NEG = 0x8c;;
let _WASM_INS_F32_CEIL = 0x8d;;
let _WASM_INS_F32_FLOOR = 0x8e;;
let _WASM_INS_F32_TRUNC = 0x8f;;
let _WASM_INS_F32_NEAREST = 0x90;;
let _WASM_INS_F32_SQRT = 0x91;;
let _WASM_INS_F32_ADD = 0x92;;
let _WASM_INS_F32_SUB = 0x93;;
let _WASM_INS_F32_MUL = 0x94;;
let _WASM_INS_F32_DIV = 0x95;;
let _WASM_INS_F32_MIN = 0x96;;
let _WASM_INS_F32_MAX = 0x97;;
let _WASM_INS_F32_COPYSIGN = 0x98;;
let _WASM_INS_F64_ABS = 0x99;;
let _WASM_INS_F64_NEG = 0x9a;;
let _WASM_INS_F64_CEIL = 0x9b;;
let _WASM_INS_F64_FLOOR = 0x9c;;
let _WASM_INS_F64_TRUNC = 0x9d;;
let _WASM_INS_F64_NEAREST = 0x9e;;
let _WASM_INS_F64_SQRT = 0x9f;;
let _WASM_INS_F64_ADD = 0xa0;;
let _WASM_INS_F64_SUB = 0xa1;;
let _WASM_INS_F64_MUL = 0xa2;;
let _WASM_INS_F64_DIV = 0xa3;;
let _WASM_INS_F64_MIN = 0xa4;;
let _WASM_INS_F64_MAX = 0xa5;;
let _WASM_INS_F64_COPYSIGN = 0xa6;;
let _WASM_INS_I32_WARP_I64 = 0xa7;;
let _WASM_INS_I32_TRUNC_U_F32 = 0xa9;;
let _WASM_INS_I32_TRUNC_S_F64 = 0xaa;;
let _WASM_INS_I32_TRUNC_U_F64 = 0xab;;
let _WASM_INS_I64_EXTEND_S_I32 = 0xac;;
let _WASM_INS_I64_EXTEND_U_I32 = 0xad;;
let _WASM_INS_I64_TRUNC_S_F32 = 0xae;;
let _WASM_INS_I64_TRUNC_U_F32 = 0xaf;;
let _WASM_INS_I64_TRUNC_S_F64 = 0xb0;;
let _WASM_INS_I64_TRUNC_U_F64 = 0xb1;;
let _WASM_INS_F32_CONVERT_S_I32 = 0xb2;;
let _WASM_INS_F32_CONVERT_U_I32 = 0xb3;;
let _WASM_INS_F32_CONVERT_S_I64 = 0xb4;;
let _WASM_INS_F32_CONVERT_U_I64 = 0xb5;;
let _WASM_INS_F32_DEMOTE_F64 = 0xb6;;
let _WASM_INS_F64_CONVERT_S_I32 = 0xb7;;
let _WASM_INS_F64_CONVERT_U_I32 = 0xb8;;
let _WASM_INS_F64_CONVERT_S_I64 = 0xb9;;
let _WASM_INS_F64_CONVERT_U_I64 = 0xba;;
let _WASM_INS_F64_PROMOTE_F32 = 0xbb;;
let _WASM_INS_I32_REINTERPRET_F32 = 0xbc;;
let _WASM_INS_I64_REINTERPRET_F64 = 0xbd;;
let _WASM_INS_F32_REINTERPRET_I32 = 0xbe;;
let _WASM_INS_F64_REINTERPRET_I64 = 0xbf;;
let _WASM_INS_INVALID = 512;;
let _WASM_INS_ENDING = 513;;

let _WASM_GRP_INVALID = 0;;
let _WASM_GRP_NUMBERIC = 8;;
let _WASM_GRP_PARAMETRIC = 9;;
let _WASM_GRP_VARIABLE = 10;;
let _WASM_GRP_MEMORY = 11;;
let _WASM_GRP_CONTROL = 12;;
let _WASM_GRP_ENDING = 13;;
