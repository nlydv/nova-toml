; Properties
;-----------

(table [
    "["
    "]"
    (bare_key)
    (dotted_key)
    ((quoted_key) @string)
] @markup.bold)

(table_array_element [
    "[["
    "]]"
    (bare_key)
    (dotted_key)
    ((quoted_key) @string)
] @markup.bold)

(pair (bare_key) @identifier.property)
(pair (quoted_key) @string.key)
(quoted_key) @string

; Literals
;---------

(boolean) @value.boolean
(comment) @comment
(string) @string
(integer) @value.number
(float) @value.number
(offset_date_time) @identifier.type
(local_date_time) @identifier.constant
(local_date) @identifier.function
(local_time) @keyword.construct

; Punctuation
;------------

"." @punctuation.delimiter
"," @punctuation.delimiter

"=" @operator

"[" @punctuation.bracket
"]" @punctuation.bracket
"[[" @punctuation.bracket
"]]" @punctuation.bracket
"{" @punctuation.bracket
"}" @punctuation.bracket
