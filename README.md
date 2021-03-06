# Bootstrap Application

[![Project Status](https://img.shields.io/static/v1?label=project%20status&message=complete&color=success&style=flat-square)](#)

Project created to run the startup of an application.

https://hub.docker.com/repository/docker/raphaelbh/bootstrap

You can create:
- infrastructure/resources
- mass of data
- anything you want

Installed tools:
- awscli
- curl
- zip / unzip
- jq

## Requirements

[![docker](https://img.shields.io/badge/Docker-2CA5E0?style=for-the-badge&logo=docker&logoColor=white)](https://www.docker.com/)
  
## Installation

```bash
$ docker build -t raphaelbh/bootstrap:latest .
```

## Usage

A folder with the initialization scripts must be informed through a volume:
`{your_folder}:/bootstrap`

It is expected that inside this folder there is a file called `run.sh` that will be automatically executed.

If you want to start the bootstrap process from another file, you must add an environment variable with the path of the file:
`START_SCRIPT=./test/run.sh`

```bash
$ docker run -v $(pwd)/sample/bootstrap:/bootstrap raphaelbh/bootstrap
or
$ docker run -v $(pwd)/sample/bootstrap:/bootstrap -e START_SCRIPT=./test/start.sh raphaelbh/bootstrap
```

## Environment Variables

`START_SCRIPT`

## Tech Stack

[![docker](https://img.shields.io/badge/Docker-2CA5E0?style=for-the-badge&logo=docker&logoColor=white)](https://www.docker.com/)
[![shellscript](https://img.shields.io/badge/Shell_Script-121011?style=for-the-badge&logo=gnu-bash&logoColor=white)](https://www.shellscript.sh/)

## Reference

- https://hub.docker.com/_/alpine

## Feedback

If you have any feedback, please contact me at raphaeldias.ti@gmail.com

[![github](https://img.shields.io/badge/GitHub-100000?style=for-the-badge&logo=github&logoColor=white)](https://github.com/raphaelbh)
[![linkedin](https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/raphaelbh/)
