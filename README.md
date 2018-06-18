DeepQA Deployment for testing chatbots provisioned with Kubernetes - Work in progress original DeepQA source taken from:

- https://github.com/llSourcell/chatbot_tutorial
baesd on:
- https://github.com/Conchylicultor/DeepQA

DISCLAIMER:
This is a blind rehash with no prior knoweldge on most of the components used - use with caution and not in production.
This readme is a fast work in progress - basic - minimal 

Usage:
In kubernetes environemnt (this was build and tested in minikube)
#Replace IP address for your local kubernetes deployment in the yml files then...

#to build out.
./run_once.sh

#to wipe/destroy
./wipe.sh

#post config.
After iniital build if error about unable to find django session table then run migration on deepqa node.
kubectl get pods (note deepqa pod name)
kubectl exec -it <pod name> -- /bin/bash
python manage.py migrate


#changes from branch hosted by Siraj (||Source||) - https://github.com/llSourcell/chatbot_tutorial

- created data/samples dir
- created missing save dir
- Downloaded missing movie_lines.txt and other files
- Installed pre-trained data
- updated to provision seperate redis server
- downgraded channels and django due to https://github.com/Conchylicultor/DeepQA/issues/187 - recommended by wujiajia2017scnu 
