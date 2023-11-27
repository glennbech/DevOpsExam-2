FROM python:3.9-slim


WORKDIR /kjell/hello_world


COPY requirements.txt .


ENV PATH="/kjell/hello_world/venv/bin:$PATH"


RUN pip install --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt


COPY . .


CMD ["python", "app.py"]