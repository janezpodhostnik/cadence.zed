[
 (blockComment)
 (lineComment)
] @comment @spell

(compositeDeclaration) @type
(importDeclaration) @include
(identifier) @variable
(addressLocation) @variable
(field) @field

(stringLiteral) @string
(typeAnnotation) @type

(parameter identifier: (identifier) @parameter)
[
    "var"
    "let"
] @type.qualifier

(access) @keyword

[
  "contract"
  "event"
  "struct"
  "resource"
  "interface"
  "enum"
] @keyword

(invokeExpression target: (identifierExpression) @function.call) ; foo()
(invokeExpression target: (memberAccessExpression) @function.call) ; foo()


(integerLiteral) @number
