#!/usr/bin/env bash

# create directories to store results locally
dir='/var/lib/lasagne_seq2seq'
sudo mkdir -p $dir'/corpora_processed/'
sudo mkdir -p $dir'/words_index/'
sudo mkdir -p $dir'/w2v_models/'
sudo mkdir -p $dir'/nn_models/'
sudo mkdir -p $dir'/results/'
sudo mkdir -p $dir'/perplexity/'
sudo chown -R "$USER" $dir

# install required packages
pip install -r requirements.txt

# install Lasagne
pip install --upgrade https://github.com/Lasagne/Lasagne/archive/master.zip