FROM golang:1.12.4-stretch
RUN go get golang.org/x/tools/cmd/present 
RUN export PATH="/bin:$PATH"
COPY . .
EXPOSE 3999
ENTRYPOINT [ "present", "-http=0.0.0.0:3999", "-play=false"]
