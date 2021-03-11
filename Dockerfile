FROM frolvlad/alpine-miniconda3:latest

RUN conda install -y -c conda-forge xeus-cling jupyterlab
RUN mkdir /notebooks

CMD ["jupyter", "lab", "--ip=0.0.0.0", "--allow-root"]
