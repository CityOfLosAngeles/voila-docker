FROM irose/citywide-civis-lab:a01a6cfd0be3

COPY conda-requirements.txt /tmp/
RUN conda install --yes -c conda-forge --file /tmp/conda-requirements.txt

COPY . /app

EXPOSE 8866
CMD ["voila", "/app/demo.ipynb"]
