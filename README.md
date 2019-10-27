# skill-flow-builder

## Verify software versions
* `docker run --rm -v ${HOME}/.aws:/root/.aws:ro -v ${HOME}/.ask:/root/.ask:ro -it darinpope/skill-flow-builder:latest python --version`
* `docker run --rm -v ${HOME}/.aws:/root/.aws:ro -v ${HOME}/.ask:/root/.ask:ro -it darinpope/skill-flow-builder:latest git --version`
* `docker run --rm -v ${HOME}/.aws:/root/.aws:ro -v ${HOME}/.ask:/root/.ask:ro -it darinpope/skill-flow-builder:latest node --version`
* `docker run --rm -v ${HOME}/.aws:/root/.aws:ro -v ${HOME}/.ask:/root/.ask:ro -it darinpope/skill-flow-builder:latest npm --version`
* `docker run --rm -v ${HOME}/.aws:/root/.aws:ro -v ${HOME}/.ask:/root/.ask:ro -it darinpope/skill-flow-builder:latest npx --version`
* `docker run --rm -v ${HOME}/.aws:/root/.aws:ro -v ${HOME}/.ask:/root/.ask:ro -it darinpope/skill-flow-builder:latest npx alexa-sfb --version`
* `docker run --rm -v ${HOME}/.aws:/root/.aws:ro -v ${HOME}/.ask:/root/.ask:ro -it darinpope/skill-flow-builder:latest ask --version`

## Create a skill project
* `docker run --rm -v ${HOME}/.aws:/root/.aws:ro -v ${HOME}/.ask:/root/.ask:ro -v ${HOME}/Documents:/root --workdir="/root" -it darinpope/skill-flow-builder:latest npx alexa-sfb new hello-world`

## Deploy your Alexa Skill

### Step 1: Setup your AWS IAM User Account



### Step 2: Set up your ASK profile 

* `docker run --rm -v ${HOME}/.aws:/root/.aws:ro -v ${HOME}/Documents:/root --workdir="/root" -v ${HOME}/.ask:/root/.ask -it darinpope/skill-flow-builder:latest ask init --no-browser`