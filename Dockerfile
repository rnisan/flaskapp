FROM python
RUN apt-get update && apt-get install vim -y
RUN pip install Flask requests
RUN mkdir /app
RUN chown 1001 /app
USER 1001
RUN cd /app; git clone https://github.com/rnisan/flaskapp/app.py
WORKDIR /app/Flaskapp
ENV Flask_APP=app.py
ENV Flask_ENV=development
EXPOSE 5000
CMD ["python", "-n", "Flask", "run", "--host = 0.0.0.0"]
