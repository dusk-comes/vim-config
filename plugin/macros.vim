" ~/.vim/plugin/macros.vim

command! InsertName call g:macros#InsertName()
command! StPretty call g:macros#PrettifyStackTrace()
command! JsPretty call g:macros#PrettifyJson()
command! JsLine call g:macros#JsonOneLine()

