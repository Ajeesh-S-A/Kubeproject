FROM python:3.9

WORKDIR /code

COPY ./requirements.txt /code/requirements.txt

RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt

COPY ./main.py /code/main.py

COPY ./form.html /code/form.html

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
