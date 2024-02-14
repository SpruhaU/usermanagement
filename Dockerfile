FROM python:3.12

ENV PYTHONUNBUFFERED 1
ENV PYTHONDONTWRITEBYTECODE 1

WORKDIR /app
COPY ./requirements.txt /app/requirements.txt

# Install Python dependencies
RUN pip3 install --upgrade pip
RUN pip3 install -r /app/requirements.txt

# Install social-auth-app-django
RUN pip3 install social-auth-app-django

COPY . /app/



EXPOSE 8000
CMD [ "python","manage.py","runserver","0.0.0.0:8000" ]