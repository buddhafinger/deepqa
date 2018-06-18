DeepQA Deployment for testing chatbots - Work in progress original DeepQA source taken from:

- https://github.com/llSourcell/chatbot_tutorial
baesd on:
- https://github.com/Conchylicultor/DeepQA


Note: after iniital build if error about unable to find django session table then run migration on deepqa node.
python manage.py migrate


Changes from original

created data/samples dir
created missing save dir
Downloaded missing movie_lines.txt and other files
Installed pre-trained data
updated config to install redis server
downgraded channels and django due to https://github.com/Conchylicultor/DeepQA/issues/187 - recommended by wujiajia2017scnu 
added redis to startup in docker and expose redis port
added redis localhost entry due to failing connection to redis with default 'redis' url.





#start deployment 
run_once.sh

#jump onto container (get name from kubectl get pods)
kubectl exec -it deepqa-6f7bdb9fbd-xk2ft -- /bin/bash




Notes:
set the environment variables with eval $(minikube docker-env)
build the image with the Docker daemon of Minukube (eg docker build -t my-image .)
set the image in the pod spec like the build tag (eg my-image)
set the imagePullPolicy to Never, otherwise Kubernetes will try to download the image.
Important note: You have to run eval $(minikube docker-env) on each terminal you want to use, since it only sets the environment variables for the current shell session.
