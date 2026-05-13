#!/usr/bin/env bash

# Usage :
# ./screenshots_region.sh <intervalle> <iterations> <x> <y> <largeur> <hauteur> [dossier]
#
# Exemple :
# ./screenshots_region.sh 5 10 100 200 800 600

set -e

INTERVAL="$1"
ITERATIONS="$2"
X="$3"
Y="$4"
WIDTH="$5"
HEIGHT="$6"
OUTPUT_DIR="${7:-screenshots}"

if [[ $# -lt 6 ]]; then
    echo "Usage: $0 <intervalle> <iterations> <x> <y> <largeur> <hauteur> [dossier]"
    exit 1
fi

mkdir -p "$OUTPUT_DIR"

# Détection outil
if command -v scrot >/dev/null 2>&1; then
    TOOL="scrot"
else
    echo "scrot non trouvé. Veuillez installer le paquet correspondant\n apt install scrot"
    exit 1
fi

for ((i=1; i<=ITERATIONS; i++)); do
    TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")
    FILE="$OUTPUT_DIR/capture_${i}_${TIMESTAMP}.png"

    scrot -a "${X},${Y},${WIDTH},${HEIGHT}" "$FILE"

    echo "[$i/$ITERATIONS] $FILE"

    if [[ $i -lt $ITERATIONS ]]; then
        sleep "$INTERVAL"
    fi
done
