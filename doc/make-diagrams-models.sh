#!/bin/bash
railroady --hide-magic -M | dot -Tsvg > doc/diagrams-models.svg
railroady --hide-magic -M | dot -Tpng > doc/diagrams-models.png
