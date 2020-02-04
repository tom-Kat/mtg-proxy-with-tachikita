FROM python:3.8.1
                    
USER gitpod

RUN pip install --upgrade pip \
    && pip install virtualenv pipenv pylint rope flake8 mypy autopep8 pep8 pylama pydocstyle bandit notebook python-language-server[all]==0.25.0 \
    && rm -rf /tmp/*

RUN pip install scrython

# Install custom tools, runtime, etc. using apt-get
# For example, the command below would install "bastet" - a command line tetris clone:
#
# RUN sudo apt-get -q update && #     sudo apt-get install -yq bastet && #     sudo rm -rf /var/lib/apt/lists/*
#
# More information: https://www.gitpod.io/docs/42_config_docker/
