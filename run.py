from src import UserRepo
from flask import Flask, request

app = Flask(__name__)

@app.route('/', methods=['GET'])
def hello_world():
    return 'Estou em um container.'

@app.route('/insert', methods=['POST'])
def insert():
    
    UserRepo = UserRepo()
    body = request.json()
    
    UserRepo.insert_user(body['name'])

    return 'Usuário inserido com sucesso!'