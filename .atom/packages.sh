#!/bin/bash

packages=(
    'atom-beautify'
    'autocomplete-modules'
    'auto-update-packages'
    'editorconfig'
    'gruvbox'
    'language-pug'
    'open-in-browser'
    'open-in-github-app'
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
    'linter-jsonlint'
    'sort-lines'
    'autoclose-html'
    'double-tag'
    'language-postcss'
    'linter-stylelint'
)

for package in "${packages[@]}"
do
    apm install $package
done
