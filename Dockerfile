# syntaxe=docker/dockerfile:1.0.0

# Utiliza a imagem oficial do Python 3.9
FROM python:3.9-slim-buster

# Criar diretório de trabalho
WORKDIR /app

# Roda o arquivo que eu quero que rode
ENV FLASK_APP run.py

# Copia o arquivo de requirements para o container
COPY requirements.txt requirements.txt

# Instala as dependências
RUN pip3 install -r requirements.txt

COPY . . 

# Comando para rodar a aplicação
CMD ["python3", "-m", "flask", "run", "--host=0.0.0.0"]