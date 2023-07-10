; ----------
; Properties
; ----------

(header) @toml.markup.bold

(pair (key (bare_key) @toml.identifier.property))
(pair (key (quoted_key) @toml.string.key))

; ----------
; Literals
; ----------

(boolean) @toml.value.boolean
(comment) @toml.comment
(string) @toml.string
(integer) @toml.value.number
(float) @toml.value.number
(offset_date_time) @toml.identifier.type
(local_date_time) @toml.identifier.constant
(local_date) @toml.identifier.function
(local_time) @toml.keyword.construct

; ----------
; Punctuation
; ----------

"=" @toml.operator

"." @toml.operator.delimiter
"," @toml.operator.delimiter

"{" @toml.bracket
"}" @toml.bracket
