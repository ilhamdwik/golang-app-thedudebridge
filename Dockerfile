FROM golang:latest

RUN mkdir /app
ADD . /app
WORKDIR /app

COPY go.mod ./
COPY go.sum ./

# RUN go build -o thedudebridge .
RUN go build -o main .

EXPOSE 5758
# ENV PORT=80

CMD ["./main"]




# FROM golang:1.16-alpine

# WORKDIR /app

# COPY go.mod ./
# COPY go.sum ./
# RUN go mod download

# COPY *.go ./

# RUN go build -o /thedudebridge .

# EXPOSE 80

# CMD [ "/thedudebridge" ]