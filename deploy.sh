docker build -t saurabh333/multi-container-client:latest -t saurabh333/multi-container-client:$GIT_SHA -f ./client/Dockerfile ./client
docker build -t saurabh333/multi-container-server:latest -t saurabh333/multi-container-server:$GIT_SHA -f ./server/Dockerfile ./server
docker build -t saurabh333/multi-container-worker:latest -t saurabh333/multi-container-worker:$GIT_SHA -f ./worker/Dockerfile ./worker
docker push saurabh333/multi-container-client:latest
docker push saurabh333/multi-container-client:$GIT_SHA
docker push saurabh333/multi-container-server:latest
docker push saurabh333/multi-container-server:$GIT_SHA
docker push saurabh333/multi-container-worker:latest
docker push saurabh333/multi-container-worker:$GIT_SHA
kubectl apply -f k8s
kubectl set image deployments/server-deployment server=saurabh333/multi-container-server:$GIT_SHA
kubectl set image deployments/client-deployment client=saurabh333/multi-container-client:$GIT_SHA
kubectl set image deployments/worker-deployment worker=saurabh333/multi-container-worker:$GIT_SHA