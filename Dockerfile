FROM ubuntu

RUN apt-get update && \ 
    apt-get install -y python3 python3-pip python3.10-venv

COPY app.py requirements.txt /opt/source-code/

WORKDIR /opt/source-code

RUN python3 -m venv venv && \ 
    . venv/bin/activate && \
    pip install -r requirements.txt

ENTRYPOINT ["/opt/source-code/venv/bin/flask", "run", "--host=0.0.0.0"]

# ENV FLASK_APP=/opt/source-code/app.py

# ENTRYPOINT ["flask", "run", "--host=0.0.0.0"]