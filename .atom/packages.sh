#!/bin/bash

packages=(
    'atom-beautify'
    'atom-material-ui'
    'atom-ternjs'
    'auto-update-packages'
    'autoclose-html'
    'autocomplete-modules'
    'docblockr'
    'double-tag'
    'editorconfig'
    'emmet'
    'file-icons'
    'font-viewer'
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
    'open-recent'
    'regex-railroad-diagram'
    'sort-lines'
    'turbo-javascript'
)

for package in "${packages[@]}"
do
    apm install $package
done
