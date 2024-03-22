(importDeclaration (identifier) @definition.import)
(functionDeclaration identifier: (identifier) @definition.function)
(compositeDeclaration identifier: (identifier) @definition.namespace)

; Scopes
[
 (compositeDeclaration)
 (forStatement)
 (ifStatement)
 (switchStatement)
 (functionDeclaration)
 (compositeDeclaration)
] @scope
