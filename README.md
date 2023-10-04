# deploy_node_aws
deploying a nodejs express api to aws


## Links
First EC2 Walkthrough: [Link](https://jonathans199.medium.com/how-to-deploy-node-express-api-to-ec2-instance-in-aws-bc038a401156)

TODO - include nginx: [Link](https://betterprogramming.pub/setup-nginx-for-your-nodejs-server-on-ec2-ae46a3d0cb1b)

[Link](https://betterprogramming.pub/deploying-a-basic-express-api-on-amazon-ec2-eea0b54a825)

More stuff: [Link](https://techblog.geekyants.com/aws-and-ec2-deploying-a-nodejs-application-using-nginx-and-pm2)

## EC2 Setup
[Node](https://www.digitalocean.com/community/tutorials/how-to-install-node-js-on-ubuntu-22-04)

## Extra Commands
Basic commands that need to be run in as well

- unzip for package un-packing
```
sudo apt install unzip
sudo apt install nginx
```

- NVM installation
```
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash

source ~/.bashrc

nvm install v18.18.0
```

- 
```
sudo npm install -g pm2
```

### Useful

EC2 Start + Stop : [Link](https://medium.com/@cristianlobomartin/start-and-stop-your-ec2s-on-a-schedule-a7a26cab38c)