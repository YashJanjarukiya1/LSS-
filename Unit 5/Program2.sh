#!/bin/bash

echo "Foreground processes:"
ps aux | awk '$7 != "0" && $7 != "?"'