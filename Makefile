local-build:
	go get .

local-run:
	go run .

docker-build:
	docker build -t twilio-go-foobar .

docker-run:
	docker run --name foobar -it --rm -p 6000:5000 twilio-go-foobar