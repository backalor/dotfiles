#!/bin/sh
find . -name '*.py' \
-o -name '*.java' \
-o -iname '*.[CH]' \
-o -name '*.cpp' \
-o -name '*.cc' \
-o -name '*.hpp'  \
> cscope.files

# -b: just build
# -q: create inverted index
# -R: recursive
cscope -b -q -R -i cscope.files

rm cscope.files
