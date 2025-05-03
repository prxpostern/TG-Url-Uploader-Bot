FROM python:3.9-slim-buster
RUN mkdir /app && chmod 777 /app
WORKDIR /app
RUN apt -qq update && apt -qq install -y bash nano python3-dev ffmpeg
COPY . .
RUN pip install -r requirements.txt

CMD python3 bot.py
