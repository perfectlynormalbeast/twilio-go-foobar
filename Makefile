local-build:
	go get .

local-run:
	go run .

docker-build:
	docker build -t perfectlynormalbeast/twilio-go-foobar .

docker-push:
	docker push perfectlynormalbeast/twilio-go-foobar

docker-run:
	docker run --name foobar -it --rm -p 30000:5000 perfectlynormalbeast/twilio-go-foobar

docker-stop:
	docker stop foobar

kube-deploy:
	kubectl apply -f foobar.yaml

kube-stop:
	kubectl delete -f foobar.yaml