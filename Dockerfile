FROM ubuntu
RUN apt install software-properties-common
RUN add-apt-repository ppa:deadsnakes/ppa
RUN apt install python3.8
WORKDIR /app
COPY . /app/
RUN pip install flask
EXPOSE 5000
CMD ["python", "Helloworld.py"]