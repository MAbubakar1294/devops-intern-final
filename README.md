[![CI](https://github.com/MAbubakar1294/devops-intern-final/actions/workflows/ci.yml/badge.svg)](https://github.com/MAbubakar1294/devops-intern-final/actions/workflows/ci.yml)
\# DevOps Intern Final Assessment



\## Project Information



\*\*Name:\*\* Muhammad Abubakar  

\*\*Date:\*\* 08 August 2026



\## Project Description



This project demonstrates a small DevOps workflow using Git, GitHub, Linux scripting, Docker, CI/CD, Nomad, and Grafana Loki.



The project covers:



\- Git and GitHub

\- Linux shell scripting

\- Docker containerization

\- GitHub Actions CI/CD

\- Nomad deployment

\- Grafana Loki monitoring



\## Hello DevOps



The `hello.py` script prints:



```text

Hello, DevOps!


## Step 3: Docker Basics

The `hello.py` application is containerized using Docker.

### Dockerfile

The Dockerfile uses Python 3.12 Slim as the base image:

```dockerfile
FROM python:3.12-slim

WORKDIR /app

COPY hello.py .

CMD ["python", "hello.py"]
