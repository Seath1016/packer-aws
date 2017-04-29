FROM hashicorp/packer

# Need to add Ansible to packer image for provisioning
RUN apk add --no-cache python python-dev
RUN pip install ansible
