FROM python:3.9

#Change the working directory to /app
WORKDIR /app

COPY ./requirements.txt /app/requirements.txt
RUN pip3 install -r requirements.txt

COPY . /app

#Expose port 5003 of the container to the outside
EXPOSE 5003

#Run application with the configuration in the .ini file
CMD ["python3.9", "./app.py"]