#!/bin/bash
#railroady --hide-magic -M | dot -Tsvg > doc/diagrams-models.svg
#railroady --hide-magic -a -i -M | dot -Tpng > doc/diagrams-models.png
rake erd orientation=vertical filename=doc/diagrams-erd filetype=png
#rake erd orientation=vertical filename=doc/diagrams-erd filetype=svg
#rake erd orientation=vertical filename=doc/diagrams-erd filetype=pdf
