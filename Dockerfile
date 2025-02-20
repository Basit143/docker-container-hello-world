FROM python:3.12

RUN pip install poetry

WORKDIR /code

COPY . /code/


# RUN poetry config virtualenvs.create false
RUN poetry config virtualenvs.create false

# RUN poetry install
RUN poetry install 


CMD ["poetry", "run", "uvicorn", "src.main:app", "--host", "0.0.0.0", "--reload"]


