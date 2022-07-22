FROM python:3.11.0b3-slim-bullseye
WORKDIR /app
COPY main.py simulate_process.sh /app/
RUN python main.py
CMD ["bash", "simulate_process.sh"]
