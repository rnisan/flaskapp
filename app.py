from flask import flask
from flask import request
import json
import requests
app = Flask(_name_)

@app.route('/', methods=['GET', 'POST', 'PUT', 'DELETE'])
def hello_world():
    output="Hello world from method: "+request.method
    return output
