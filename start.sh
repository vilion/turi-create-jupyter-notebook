#!/bin/bash
# taka5417
docker run -it -d --name notebook -p 8888:8888 -v /Users/takabatakekoichi/Documents/お勉強/machine-learning/coursera-case-study:/home/jovyan/work/coursera-case-study -u root jupyter/datascience-notebook start-notebook.sh --NotebookApp.password='argon2:$argon2id$v=19$m=10240,t=10,p=8$oHxPMbS1tPWeguCv9Lyg8g$G9NhQvrx1TFg3fukTXPCUA'
