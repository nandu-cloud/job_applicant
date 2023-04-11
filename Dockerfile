FROM python:3.11.3
WORKDIR /app
COPY requirement.txt .
RUN pip install --upgrade pip==23.0.1
RUN pip install --upgrade setuptools
RUN pip install -r requirement.txt
COPY . .
CMD ["python", "app.py"]
