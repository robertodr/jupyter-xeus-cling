FROM continuumio/miniconda3:4.9.2-alpine

RUN conda install -y -c conda-forge \ 
    xeus-cling \
    nodejs \
    jupyterlab
RUN mkdir /notebooks

CMD ["jupyter", "lab", "--ip='0.0.0.0'", "--port=8888", "--no-browser", "--allow-root"]
