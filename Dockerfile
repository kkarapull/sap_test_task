FROM python:3.10.8
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
EXPOSE 5000
# CMD ["python", "-m", "flask", "run"]
CMD ["python", "app.py"]