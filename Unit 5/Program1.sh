#!/bin/bash

echo "Background processes:"
ps aux | awk '$8 ~ /S/ || $8 ~ /T/'