package Compiler::Lexer::TokenType;
use strict;
use warnings;
use constant {
    T_Return => 0,
    T_Add => 1,
    T_Sub => 2,
    T_Mul => 3,
    T_Div => 4,
    T_Mod => 5,
    T_ThreeTermOperator => 6,
    T_Greater => 7,
    T_Less => 8,
    T_StringAdd => 9,
    T_Ref => 10,
    T_Glob => 11,
    T_BitNot => 12,
    T_BitOr => 13,
    T_Or => 14,
    T_BitAnd => 15,
    T_And => 16,
    T_BitXOr => 17,
    T_XOr => 18,
    T_StringMul => 19,
    T_AddEqual => 20,
    T_SubEqual => 21,
    T_MulEqual => 22,
    T_DivEqual => 23,
    T_ModEqual => 24,
    T_GreaterEqual => 25,
    T_LessEqual => 26,
    T_EqualEqual => 27,
    T_Diamond => 28,
    T_Compare => 29,
    T_RegOK => 30,
    T_RegNot => 31,
    T_NotEqual => 32,
    T_ArraySize => 33,
    T_StringLess => 34,
    T_StringLessEqual => 35,
    T_StringGrater => 36,
    T_StringGraterEqual => 37,
    T_StringEqual => 38,
    T_StringNotEqual => 39,
    T_StringCompare => 40,
    T_Inc => 41,
    T_Dec => 42,
    T_Exp => 43,
    T_PowerEqual => 44,
    T_DefaultEqual => 45,
    T_LeftShift => 46,
    T_RightShift => 47,
    T_AndBitEqual => 48,
    T_OrBitEqual => 49,
    T_NotBitEqual => 50,
    T_OrEqual => 51,
    T_AndEqual => 52,
    T_Slice => 53,
    T_DefaultOperator => 54,
    T_ToDo => 55,
    T_VarDecl => 56,
    T_FunctionDecl => 57,
    T_Method => 58,
    T_Assign => 59,
    T_Is => 60,
    T_IsNot => 61,
    T_Not => 62,
    T_BuiltinFunc => 63,
    T_RequireDecl => 64,
    T_Import => 65,
    T_SpecificKeyword => 66,
    T_DataWord => 67,
    T_ModWord => 68,
    T_AUTOLOAD => 69,
    T_CORE => 70,
    T_DESTROY => 71,
    T_STDIN => 72,
    T_STDOUT => 73,
    T_STDERR => 74,
    T_Redo => 75,
    T_Next => 76,
    T_Last => 77,
    T_Goto => 78,
    T_Continue => 79,
    T_Do => 80,
    T_Break => 81,
    T_Handle => 82,
    T_LocalDecl => 83,
    T_OurDecl => 84,
    T_StateDecl => 85,
    T_UseDecl => 86,
    T_UsedName => 87,
    T_IfStmt => 88,
    T_ElseStmt => 89,
    T_ElsifStmt => 90,
    T_UnlessStmt => 91,
    T_UntilStmt => 92,
    T_WhenStmt => 93,
    T_GivenStmt => 94,
    T_DefaultStmt => 95,
    T_Comma => 96,
    T_Colon => 97,
    T_SemiColon => 98,
    T_LeftParenthesis => 99,
    T_RightParenthesis => 100,
    T_LeftBrace => 101,
    T_RightBrace => 102,
    T_LeftBracket => 103,
    T_RightBracket => 104,
    T_ArrayDereference => 105,
    T_HashDereference => 106,
    T_ArraySizeDereference => 107,
    T_Key => 108,
    T_BareWord => 109,
    T_Arrow => 110,
    T_Pointer => 111,
    T_NamespaceResolver => 112,
    T_Namespace => 113,
    T_Package => 114,
    T_Class => 115,
    T_CallDecl => 116,
    T_CodeRef => 117,
    T_WhileStmt => 118,
    T_ForStmt => 119,
    T_ForeachStmt => 120,
    T_Annotation => 121,
    T_ArgumentArray => 122,
    T_SpecificValue => 123,
    T_ConstValue => 124,
    T_ProgramArgument => 125,
    T_LibraryDirectories => 126,
    T_Environment => 127,
    T_Include => 128,
    T_Signal => 129,
    T_RegOpt => 130,
    T_RegQuote => 131,
    T_RegDoubleQuote => 132,
    T_RegList => 133,
    T_RegExec => 134,
    T_RegDecl => 135,
    T_RegMatch => 136,
    T_RegDelim => 137,
    T_RegMiddleDelim => 138,
    T_RegAllReplace => 139,
    T_RegReplace => 140,
    T_RegReplaceFrom => 141,
    T_RegReplaceTo => 142,
    T_FieldDecl => 143,
    T_TypeRef => 144,
    T_LabelRef => 145,
    T_LocalVarDecl => 146,
    T_GlobalVarDecl => 147,
    T_MultiLocalVarDecl => 148,
    T_MultiGlobalVarDecl => 149,
    T_Var => 150,
    T_CodeVar => 151,
    T_ArrayVar => 152,
    T_HashVar => 153,
    T_Int => 154,
    T_Double => 155,
    T_String => 156,
    T_RawString => 157,
    T_ExecString => 158,
    T_HereDocumentTag => 159,
    T_HereDocumentRawTag => 160,
    T_RawHereDocument => 161,
    T_HereDocument => 162,
    T_HereDocumentEnd => 163,
    T_Object => 164,
    T_RegExp => 165,
    T_Array => 166,
    T_Hash => 167,
    T_Operator => 168,
    T_LocalVar => 169,
    T_LocalArrayVar => 170,
    T_LocalHashVar => 171,
    T_GlobalVar => 172,
    T_GlobalArrayVar => 173,
    T_GlobalHashVar => 174,
    T_ArrayRef => 175,
    T_HashRef => 176,
    T_ArrayAt => 177,
    T_HashAt => 178,
    T_ArraySet => 179,
    T_HashSet => 180,
    T_Function => 181,
    T_Call => 182,
    T_Argument => 183,
    T_List => 184,
    T_Default => 185,
    T_Undefined => 186,

};
1;

package Compiler::Lexer::SyntaxType;
use strict;
use warnings;
use constant {
    T_Value     => 0,
    T_Term      => 1,
    T_Expr      => 2,
    T_Stmt      => 3,
    T_BlockStmt => 4
};
1;

package Compiler::Lexer::Kind;
use strict;
use warnings;
use constant {
    T_Return => 0,
    T_Operator => 1,
    T_Assign => 2,
    T_Decl => 3,
    T_Function => 4,
    T_SingleTerm => 5,
    T_Import => 6,
    T_SpecificKeyword => 7,
    T_DataWord => 8,
    T_ModWord => 9,
    T_AUTOLOAD => 10,
    T_CORE => 11,
    T_DESTROY => 12,
    T_Handle => 13,
    T_Redo => 14,
    T_Next => 15,
    T_Last => 16,
    T_Goto => 17,
    T_Continue => 18,
    T_Do => 19,
    T_Break => 20,
    T_Term => 21,
    T_Stmt => 22,
    T_DefaultStmt => 23,
    T_Comma => 24,
    T_Colon => 25,
    T_StmtEnd => 26,
    T_Symbol => 27,
    T_Modifier => 28,
    T_Namespace => 29,
    T_Annotation => 30,
    T_Ref => 31,
    T_Get => 32,
    T_Set => 33,
    T_Undefined => 34,

};
1;
