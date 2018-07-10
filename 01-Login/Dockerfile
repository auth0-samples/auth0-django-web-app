FROM python:3.6

WORKDIR /home/app

#If we add the requirements and install dependencies first, docker can use cache if requirements don't change
ADD requirements.txt /home/app
RUN pip install --no-cache-dir -r requirements.txt

ADD . /home/app

# Migrate the database
RUN python manage.py migrate

CMD python manage.py runserver 0.0.0.0:3000

EXPOSE 3000
