# For more information, please refer to https://aka.ms/vscode-docker-python
FROM jupyter/scipy-notebook:latest

# Keeps Python from generating .pyc files in the container
ENV PYTHONDONTWRITEBYTECODE=1

# Turns off buffering for easier container logging
ENV PYTHONUNBUFFERED=1

# Install pip requirements
COPY requirements.txt .
RUN python -m pip install -r requirements.txt



# Creates a non-root user with an explicit UID and adds permission to access the /app folder
# For more info, please refer to https://aka.ms/vscode-docker-python-configure-containers
ARG NB_USER=jovyan
ARG NB_UID=1000
ENV USER ${NB_USER}
ENV NB_UID ${NB_UID}
ENV HOME /home/${NB_USER}

USER root
WORKDIR ${HOME}/btt
COPY . ${HOME}/btt

# RUN adduser --disabled-password \
#     --gecos "Default user" \
#     --uid ${NB_UID} \
#     ${NB_USER}


RUN fix-permissions ${HOME}/btt

RUN mkdir ${HOME}/.msticpy
RUN apt-get update --yes && \
    apt-get install --yes --no-install-recommends \
    python3-gi \
    python3-gi-cairo \
    gir1.2-secret-1 && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

USER ${NB_UID}