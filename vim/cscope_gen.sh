#!/bin/bash

PWD=`pwd`

find ${PWD}/ -name '*.py' \
-o -name '*.java' \
-o -iname '*.[CH]' \
-o -name '*.cpp' \
-o -name '*.cc' \
-o -name '*.hpp'  \
> cscope.files 2>/dev/null

# -b: just build the cross-reference only
# -q: create inverted index
# -R: recursive
# -i: include only these files
cscope -b -q -R -i cscope.files 2>/dev/null

rm cscope.files
