FROM wotjr980321/py_dev

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

RUN mkdir /home/app
ADD ./requirements.txt /home/app/requirements.txt
WORKDIR /home/app

RUN pip install --no-cache-dir --upgrade pip
RUN pip install --no-cache-dir --upgrade -r /home/app/requirements.txt
COPY ./app /home/app
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8080"]


