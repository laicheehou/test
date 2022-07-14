FROM icr.io/codeengine/golang:alpine
COPY hello.py /
RUN go build -o /hello /hello.py

# Copy the exe into a smaller base image
FROM icr.io/codeengine/alpine
COPY --from=0 /hello /hello
CMD /hello
