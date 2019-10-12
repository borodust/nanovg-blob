#!/usr/bin/env bash

script_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

lisp download-blobs --lib-postfix ".gl2.bodged" \
     nanovg https://github.com/borodust/bodge-nanovg \
     "$script_dir/gl2/" $1

lisp download-blobs --lib-postfix ".gl3.bodged" \
     nanovg https://github.com/borodust/bodge-nanovg \
     "$script_dir/gl3/" $1
