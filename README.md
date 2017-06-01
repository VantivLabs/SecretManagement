# SecretManagement
Securing payment transactions in Docker Containers

This GitHub site is meant to be read in combination with an article on Secret Management in Docker that appears on the Vantiv O.N.E. developer site.  The article located at https://developer.vantiv.com/docs/DOC-2438 is the best place to start reading!

The files included in this repository will be needed in the course of following the eCommerce secret management tutorial on Vantiv O.N.E.

The files are as follows:

* create_ecomm_secrets.sh - this is a shell script meant to be run on a Kubernetes cluster in a shell that has access to the K8s cli (kubectl) - this script create a secret object on the Kubernetes cluster containing credentials needed to securely connect to Vantiv eCommerce
* ecomm_app.yaml - this is a YAML file that defines a Kubernetes Pod that contains our very simple eCommerce application. The YAML file is referenced using the kubectl create command. The point is to illustrate that we can pass credentials to the container without their appearing in the YAML or existing in the Docker container itself
* auth.sh - this is a simple shell script (that relies on cURL) that lives inside the Docker container and illustrates that we can process a transaction after provisioning a Docker containiner using the passed eCommerce credentials.
