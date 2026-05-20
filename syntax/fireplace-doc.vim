if exists('b:current_syntax')
  finish
endif

syntax match fireplaceDocTitle /\%1l.*/
syntax match fireplaceDocKind /^\%(Macro\|Special Form\)$/
syntax match fireplaceDocMeta /^Added in .*/
syntax match fireplaceDocDeprecated /^Deprecated in .*/
syntax match fireplaceDocSee /^Also see:.*/
syntax match fireplaceDocUrl /^\s*Please see .*/
syntax match fireplaceDocArglist /^\s*[[(].*/

highlight default link fireplaceDocTitle Title
highlight default link fireplaceDocKind Type
highlight default link fireplaceDocMeta Comment
highlight default link fireplaceDocDeprecated Error
highlight default link fireplaceDocSee Identifier
highlight default link fireplaceDocUrl Underlined
highlight default link fireplaceDocArglist Statement

let b:current_syntax = 'fireplace-doc'
