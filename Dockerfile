FROM python:3.9-slim

WORKDIR /app

COPY . /app

RUN   pip install ffmpeg  

RUN pip install streamlit && pip install git+https://github.com/openai/whisper.git 

EXPOSE 8501

CMD ["streamlit","run","test2.py"]
