# password-vault

Hashicorp password Vault with web UI - To be used with https://tjth.co/docker-based-hashicorp-vault

# Installation

Clone this repository to your Docker host and start the container:

```
sudo docker-compose up -d
```

The ui will then be available at http://[your-docker-host]:8201

# Authentication

The root unlock key and root Token generated on intial setup should be stored securely.

# Logs

Logging must be enabled (As per guide on TJTH Ltd Website.)
