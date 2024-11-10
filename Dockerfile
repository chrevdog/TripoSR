FROM runpod/pytorch:2.4.0-py3.11-cuda12.4.1-devel-ubuntu22.04

WORKDIR app/

COPY examples/ /app/examples/
COPY figures/ /app/figures/
COPY tsr/ /app/tsr/
COPY gradio_app.py /app/gradio_app.py
COPY requirements.txt /app/requirements.txt
COPY run.py /app/run.py

RUN pip install --upgrade setuptools
RUN pip install -r requirements.txt

RUN mkdir /app/output/
ENTRYPOINT ["python","run.py"]
