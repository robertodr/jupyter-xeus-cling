FROM continuumio/miniconda3:4.10.3-alpine

RUN conda install -y -c conda-forge \
    eigen=3.4.0 \
    xeus-cling=0.13.0 \
    xtensor=0.23.10 \
    xtensor-blas=0.19.1 \
    xtensor-io=0.12.9 \
    jupyterlab \
    nodejs
RUN mkdir /notebooks

CMD ["jupyter", "lab", "--ip=0.0.0.0", "--port=8989", "--no-browser", "--allow-root"]
