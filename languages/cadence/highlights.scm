

(TypeIdentifier) @type
(TypeBuiltin) @type.builtin
(Identifier) @variable
((Identifier) @variable.builtin
  (#eq? @variable.builtin "self"))

(InitDeclaration) @constructor
(SpecialFunctionDeclaration) @function.builtin
(SpecialFunctionIdentifier) @function.builtin
(FunctionDeclaration name: (Identifier) @function)

(StringLiteral) @string
(PathExpression) @string
(PathExpression (Identifier) @string)
(Address) @number
(IntegerLiteral) @number
(FixedPointLiteral) @number
(BooleanLiteral) @boolean

(Parameter Identifier: (Identifier) @variable.parameter)
[
    "var"
    "let"
] @type.qualifier

(Access) @keyword
(transactionDeclaration) @keyword
(EntitlementIdentifier) @label

(InterfaceMarker) @keyword
(CompositeDeclaration) @keyword

[
    "event"
    "enum"
    "fun"
    "pre"
    "post"
    "execute"
    "return"
    "import"
    "from"
    "view"
    "create"
    "if"
    "mapping"
] @keyword

[
    "("
    ")"
    "}"
    "{"
    "["
    "]"
] @punctuation.bracket

[
    "."
    ","
    ";"
    "?"
    ":"
] @punctuation.delimiter

(MultiplicativeOp) @operator
(AdditiveOp) @operator
(BitwiseShiftOp) @operator
(BitwiseAnd) @operator
(BitwiseXor) @operator
(BitwiseOr) @operator
(RelationalOP) @operator
(NilCoalescing) @operator
(EqualityOp) @operator
(LogicalAnd) @operator
(LogicalOr) @operator
(Transfer) @operator
(SwapStatement) @operator
(Move) @operator

(Comment) @comment
