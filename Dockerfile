FROM python
WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir --upgrade -r requirements.txt
COPY . .
CMD ["flask", "db upgrade"] 
CMD [ "gunicorn" ,"--bind", "0.0.0.0:80 ", "app:create_app()"]