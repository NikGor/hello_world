FROM python:3.11
WORKDIR /app
COPY . /app
RUN pip install poetry
RUN poetry install
RUN poetry run python manage.py migrate
CMD ["poetry", "run", "python", "manage.py", "runserver", "0.0.0.0:8000"]
