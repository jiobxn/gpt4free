FROM python:3.11
MAINTAINER "The gpt4free Project" <admin@jiobxn.com>

ARG APP="0"

RUN git clone https://github.com/xtekky/gpt4free.git
RUN cd gpt4free \
    && pip install --upgrade pip \
    && pip3 install -r requirements.txt

WORKDIR /gpt4free/gui

EXPOSE 8501

CMD ["streamlit", "run", "streamlit_app.py"]
