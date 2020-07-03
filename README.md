# orr-instance-template

This small repository is a template intended to facilitate the
set-up of a brand new ORR instance.

Only requirements on your target machine are
[Docker Engine](https://docs.docker.com/engine/installation/)
and [Docker Compose](https://docs.docker.com/compose/install/).
If your target machine is MacOS or Windows, you only need to have
Docker Engine installed as it includes Docker Compose.

With this template you can focus on the needed configuration
and let Docker take care of pulling the service images
and launching your ORR instance.

The more detailed install documentation is available at
https://mmisw.org/orrdoc/install/. In a nutshell, the steps are:

### Get the template

Download the latest template version from
https://github.com/mmisw/orr-instance-template/releases,
expand the tarball or zip file on your target machine
and `cd` to the home directory there.

> Or, if you have a Git client:
>
>       git clone https://github.com/mmisw/orr-instance-template.git myORR
>       cd myORR
>       rm -rf .git

### Environment variables

`setenv.sh` can be used to define a number of environment variables
that are used in later steps:

- Edit `setenv.sh` to review and adjust the variables as needed.
- On the command line, "source" `setenv.sh` to expose the variables to the
  environment: `$ source setenv.sh`

### Configuration

- Edit `config/orront.conf`, which is the master configuration for your ORR instance.
- Optionally, edit `config/orrportal.config.js`.
- Optionally, edit `config/notifyemails`.

### Launching

`docker-compose.yml` specifies the services comprising the ORR system.
No changes are typically needed in this file unless otherwise
indicated in ORR documentation, release notes, or other communications.

Launch the ORR system:

      docker-compose up -d
