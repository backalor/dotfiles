#!/bin/sh

find $PWD -name '*.py' \
-o -name '*.java' \
-o -iname '*.[CH]' \
-o -name '*.cpp' \
-o -name '*.cc' \
-o -name '*.hpp'  \
> cscope.files

# -b: just build the cross-reference only
# -q: create inverted index
# -R: recursive
# -i: include only these files
cscope -b -q -R -i cscope.files

rm cscope.files
