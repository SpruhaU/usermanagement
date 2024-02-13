FROM python:3.8-slim-buster
ENV PYTHONUNBUFFERED=1
WORKDIR /django
COPY requirements.txt requirements.txt

# Install Python dependencies
RUN pip install -r requirements.txt


# Install social-auth-app-django
RUN pip install social-auth-app-django
