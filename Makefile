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

kube-apply:
	kubectl apply -f foobar.yaml

kube-delete:
	kubectl delete -f foobar.yaml

eks-create-cluster:
	eksctl create cluster --name tweek --without-nodegroup

eks-create-nodegroup:
	eksctl create nodegroup \
      --cluster tweek \
      --region $AWS_REGION \
      --name tweek-nodegroup \
      --node-type t3.micro \
      --nodes 2 \
      --nodes-min 1 \
      --nodes-max 3

eks-delete:
	eksctl delete cluster --name tweek