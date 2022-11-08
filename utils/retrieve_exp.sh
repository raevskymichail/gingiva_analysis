#!/bin/bash

set -e

EXP_DIR="/media/large/volume3/processed_RNAseq"
EXP_DIR="/media/large/volume3/processed_RNAseq*"
# EXP_DIR="/data/mraevsky/oncobox/ocg.cancer.gov_processed/pub/OCG-DCC/TARGET/"

SAMPLES_LIST="/home/mraevsky/RNAseq_exp_samples.txt"
DOWNLOAD_DIR="/home/mraevsky/gingiva_exp_data"
mkdir -p $DOWNLOAD_DIR && cd $DOWNLOAD_DIR

## From local machine
# scp RNAseq_exp_samples.txt oncobox:~/

# Check wheather SAMPLES_LIST in UNIX format
sed 's/^M$//' "${SAMPLES_LIST}" | sponge "${SAMPLES_LIST}" # DOS to Unix
sed $'s/\r$//' "${SAMPLES_LIST}" | sponge "${SAMPLES_LIST}" # DOS to Unix


while IFS="" read -r sample; do
    echo "$(date) - Processing $sample"
    find $EXP_DIR -type f -iname "*${sample}*.txt" 2>/dev/null |
        xargs -I{} cp {} $DOWNLOAD_DIR
done <"$SAMPLES_LIST"

## From local machine
# scp -r oncobox:/home/mraevsky/exp_data .

rm -r $DOWNLOAD_DIR


