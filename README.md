This template is intended to facilitate the set-up of a brand new ORR instance.

Only requirements on your target machine are 
[Docker Engine](https://docs.docker.com/engine/installation/)
and [Docker Compose](https://docs.docker.com/compose/install/).

With this template you can focus on the needed configuration 
and let Docker take care of pulling the service images 
and launching your ORR instance.

The steps are:

### Get the template

Download the latest template version from 
https://github.com/mmisw/orr-instance-template/releases,
expand the tarball on your target machine 
and `cd` to the home directory there.

Or, if you have a Git client:

      git clone https://github.com/mmisw/orr-instance-template.git myORR
      cd myORR
      rm -rf .git
      
### Environment variables     
            
`setenv.sh` can be used to define a number of environment variables 
that are used in later steps:
  
      vi setenv.sh
      source setenv.sh
  
### Configuration     
     
Edit `config/orront.conf`, the master configuration for your ORR instance.
  
Also, optionally, edit `config/notifyemails`.
 
### Launching

`docker-compose.yml` specifies the services comprising the ORR system.
No changes are typically needed in this file unless otherwise
indicated in ORR documentation, release notes, or other communications. 

Launch the ORR system:

      docker-compose up -d

### Documentation

More comprehensive install documentation is available at 
https://mmisw.org/orrdoc/install/.
