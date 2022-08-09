FROM alpine

RUN apk --update add py3-pip

WORKDIR /app

COPY . .

RUN pip3 install -r /app/requirements.txt

CMD flask run --host 0.0.0.0

EXPOSE 5000

