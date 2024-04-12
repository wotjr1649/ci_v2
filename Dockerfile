FROM wotjr980321/py_dev

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

WORKDIR /app

COPY ./requirements.txt /app/requirements.txt
RUN pip install --no-cache-dir --upgrade pip
RUN pip install --no-cache-dir --upgrade -r /app/requirements.txt
COPY ./app .

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8080"]