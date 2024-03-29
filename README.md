# skill-flow-builder

## Build the image

* `docker build -t darinpope/skill-flow-builder:latest .`

## Verify software versions
* `docker run --rm -v ${HOME}/.aws:/root/.aws:ro -v ${HOME}/.ask:/root/.ask:ro -it darinpope/skill-flow-builder:latest python --version`
    * Based on https://developer.amazon.com/docs/custom-skills/set-up-the-skill-flow-builder-as-a-developer.html, don't use Python > 2.7.16
* `docker run --rm -v ${HOME}/.aws:/root/.aws:ro -v ${HOME}/.ask:/root/.ask:ro -it darinpope/skill-flow-builder:latest git --version`
    * https://pkgs.alpinelinux.org/packages?name=git&branch=v3.10
* `docker run --rm -v ${HOME}/.aws:/root/.aws:ro -v ${HOME}/.ask:/root/.ask:ro -it darinpope/skill-flow-builder:latest node --version`
    * https://pkgs.alpinelinux.org/packages?name=npm&branch=v3.10
* `docker run --rm -v ${HOME}/.aws:/root/.aws:ro -v ${HOME}/.ask:/root/.ask:ro -it darinpope/skill-flow-builder:latest npm --version`
    * https://pkgs.alpinelinux.org/packages?name=npm&branch=v3.10
* `docker run --rm -v ${HOME}/.aws:/root/.aws:ro -v ${HOME}/.ask:/root/.ask:ro -it darinpope/skill-flow-builder:latest npx --version`
    * https://pkgs.alpinelinux.org/packages?name=npm&branch=v3.10
* `docker run --rm -v ${HOME}/.aws:/root/.aws:ro -v ${HOME}/.ask:/root/.ask:ro -it darinpope/skill-flow-builder:latest npx alexa-sfb --version`
    * https://www.npmjs.com/package/@alexa-games/sfb-skill
* `docker run --rm -v ${HOME}/.aws:/root/.aws:ro -v ${HOME}/.ask:/root/.ask:ro -it darinpope/skill-flow-builder:latest ask --version`
    * https://www.npmjs.com/package/ask-cli
* `docker run --rm -v ${HOME}/.aws:/root/.aws:ro -v ${HOME}/.ask:/root/.ask:ro -it darinpope/skill-flow-builder:latest aws --version`
    * https://github.com/aws/aws-cli/releases

## Setup a project

### Create a skill project

* `docker run --rm -v ${HOME}/.aws:/root/.aws:ro -v ${HOME}/.ask:/root/.ask:ro -v ${HOME}/Documents:/root --workdir="/root" -it darinpope/skill-flow-builder:latest npx alexa-sfb new hello-world`

### Install a language extension for Visual Studio Code

* `docker run --rm -v ${HOME}/.aws:/root/.aws:ro -v ${HOME}/.ask:/root/.ask:ro -v ${HOME}/Documents:/root --workdir="/root/hello-world" -it darinpope/skill-flow-builder:latest npx alexa-sfb new hello-world`

## Deploy your Alexa Skill

### Step 1: Setup your AWS IAM User Account



### Step 2: Set up your ASK profile 

* `docker run --rm -v ${HOME}/.aws:/root/.aws:ro -v ${HOME}/Documents:/root --workdir="/root" -v ${HOME}/.ask:/root/.ask -it darinpope/skill-flow-builder:latest ask init --no-browser`