#!/bin/bash

packages=(
    'atom-beautify'
    'autocomplete-modules'
    'editorconfig'
    'gruvbox'
    'language-pug'
    'open-in-browser'
    'turbo-javascript'
    'emmet'
    'javascript-snippets'
    'linter'
    'open-in-browsers'
    'atom-material-ui'
    'docblockr'
    'file-icons'
    'language-babel'
    'linter-eslint'
    'autoclose-html'
    'double-tag'
    'language-postcss'
    'linter-stylelint'
)

for package in "${packages[@]}"
do
    apm install $package
done
