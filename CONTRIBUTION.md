docker build -t flask-api .

 docker run -v ${PWD}:/app -p 8000:5000 -i --rm --name flsk flask-api