# Multi Container App

This project is setup to demo a multi conatiner app end to end using google cloud hosted Kubernetes service. TravisCI is used for CI/CD

The intention is to experiment with kuberentes, the build pipelines and how to deploy to Google Gloud using Travic CI. 

## Project Structure

### Client: 
This folder contains a demo react app that acts as user interface.

### Server:
This is Nodejs api that supports actions from UI. It connects to Postgres db container and the redis cache container.

### Worker:
This is backend nodeJs worker process. It listens to messages posted on redis cache and performs certain calculations. It is hosted on NodeJs container.

### K8s:
This folder contains all the kubernetes configuration files.

## Instructions:
To follow.





