FROM python
WORKDIR /python
ENV Python_APP=main.py
ENV Python_RUN_HOST=localhost
RUN apt-get update -y 
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
EXPOSE 5000:5000
COPY . .
CMD ["python", "main.py"]
