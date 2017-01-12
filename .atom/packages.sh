#!/bin/bash

packages=(
    'atom-beautify'
    'atom-material-ui'
    'auto-update-packages'
    'autoclose-html'
    'autocomplete-modules'
    'docblockr'
    'double-tag'
    'editorconfig'
    'emmet'
    'file-icons'
    'gruvbox'
    'javascript-snippets'
    'language-babel'
    'language-postcss'
    'language-pug'
    'linter-eslint'
    'linter-jsonlint'
    'linter-stylelint'
    'linter'
    'open-in-browser'
    'open-in-github-app'
    'regex-railroad-diagram'
    'sort-lines'
    'turbo-javascript'
)

for package in "${packages[@]}"
do
    apm install $package
done
