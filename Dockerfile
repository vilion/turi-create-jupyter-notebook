# ここはビルド用のコンテナ
FROM python:3.8-buster as builder

RUN pip install notebook turicreate matplotlib

USER root
RUN apt-get update && \
    apt-get install -y gnuplot octave && \
    apt-get clean
    
# pipでOctaveのカーネルとOctave用のJupyter kernelをインスコ
# USER jovyan
RUN pip install octave_kernel && \
    export OCTAVE_EXECUTABLE=$(which octave)
