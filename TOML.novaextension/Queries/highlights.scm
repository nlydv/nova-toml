; ----------
; Properties
; ----------

(header) @markup.bold

(pair (key (bare_key) @identifier.property))
(pair (key (quoted_key) @string.key))

; ----------
; Literals
; ----------

(boolean) @value.boolean
(comment) @comment
(string) @string
(integer) @value.number
(float) @value.number
(offset_date_time) @identifier.type
(local_date_time) @identifier.constant
(local_date) @identifier.function
(local_time) @keyword.construct

; ----------
; Punctuation
; ----------

"." @operator.punctuation.delimiter
"," @operator.punctuation.delimiter

"=" @operator

"{" @punctuation.bracket
"}" @punctuation.bracket
