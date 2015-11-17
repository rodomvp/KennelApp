#!/bin/bash
#railroady --hide-magic -M | dot -Tsvg > doc/diagrams-models.svg
#railroady --hide-magic -a -i -M | dot -Tpng > doc/diagrams-models.png
function make_fancy_diagram {
  rake erd orientation=vertical \
           inheritance=true \
           indirect=true \
           polymorphism=true\
           filename=doc/diagrams-erd filetype=$1
}

make_fancy_diagram png
make_fancy_diagram pdf
#rake erd orientation=vertical filename=doc/diagrams-erd filetype=svg
#rake erd orientation=vertical filename=doc/diagrams-erd filetype=pdf
