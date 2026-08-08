# DevOps Intern Final Assessment

## Project Information

| Item        | Details                        |
| ----------- | ------------------------------ |
| **Name**    | Muhammad Abubakar              |
| **Date**    | 08 August 2026                 |
| **Project** | DevOps Intern Final Assessment |

---

## 1. Project Overview

This project demonstrates an end-to-end DevOps workflow for a simple Python application.

The project integrates source control, CI/CD, containerization, orchestration, centralized logging, monitoring, alerting, and application recovery using modern DevOps tools.

### Complete Workflow

```text
Python Application
       |
       v
Git / GitHub
       |
       v
GitHub Actions
       |
       v
Docker
       |
       v
HashiCorp Nomad
       |
       v
Grafana Alloy
       |
       v
Grafana Loki
       |
       v
Grafana Dashboard
       |
       v
Grafana Alerting
       |
       v
Application Recovery
```

---

## 2. Technologies Used

* Python
* Git
* GitHub
* Linux / WSL
* Docker
* GitHub Actions
* HashiCorp Nomad
* Grafana Alloy
* Grafana Loki
* Grafana

---

## 3. Application

The project contains a simple Python application.

### Application File

```text
hello.py
```

The application prints:

```text
Hello, DevOps!
```

---

## 4. Docker Containerization

The Python application is containerized using Docker.

### Dockerfile

```dockerfile
FROM python:3.12-slim

WORKDIR /app

COPY hello.py .

CMD ["python", "hello.py"]
```

### Docker Image

```text
devops-hello:1.0
```

The Docker image was successfully built and the application was successfully executed inside a Docker container.

---

## 5. Git and GitHub

Git is used for source code management and version control.

The project repository is maintained on GitHub.

### Main Branch

```text
main
```

The project changes were successfully committed and pushed to the GitHub repository.

---

## 6. GitHub Actions CI/CD

GitHub Actions is used to automate the application workflow.

### Workflow File

```text
.github/workflows/ci.yml
```

The workflow performs the following tasks:

1. Checks out the repository.
2. Sets up Python.
3. Runs the Python application.

The GitHub Actions workflow was successfully configured and verified.

---

## 7. HashiCorp Nomad Deployment

HashiCorp Nomad is used to deploy and manage the Docker application.

### Nomad Job File

```text
nomad/hello.nomad
```

### Nomad Job

```text
hello-devops
```

### Deployment Status

The Nomad deployment was successfully validated and deployed.

```text
Status       = running
Healthy      = 1
Unhealthy    = 0
```

The application is running as a Nomad service with one healthy allocation.

---

## 8. Monitoring Architecture

The monitoring system collects Docker container logs and makes them available for visualization and alerting.

```text
+----------------------+
|   Docker Container   |
|    hello-devops      |
+----------+-----------+
           |
           | Docker Logs
           v
+----------------------+
|    Grafana Alloy     |
+----------+-----------+
           |
           | Log Forwarding
           v
+----------------------+
|     Grafana Loki     |
+----------+-----------+
           |
           | Log Queries
           v
+----------------------+
|       Grafana        |
|      Dashboard       |
+----------+-----------+
           |
           v
+----------------------+
|   Grafana Alerting   |
+----------------------+
```

---

## 9. Grafana Alloy

Grafana Alloy is used to discover Docker containers and collect their logs through the Docker socket.

### Configuration File

```text
monitoring/config.alloy
```

Alloy forwards the collected Docker logs to Grafana Loki.

---

## 10. Grafana Loki

Grafana Loki is used as the centralized log storage and query backend.

### Loki Endpoint

```text
http://localhost:3100
```

Loki readiness was successfully verified using its readiness endpoint.

Docker log data was successfully received by Loki and queried through the Loki API.

---

## 11. Grafana Monitoring Dashboard

A Grafana monitoring dashboard was created for the DevOps application.

### Dashboard

```text
DevOps Monitoring Dashboard
```

### Dashboard Panels

The dashboard contains the following panels:

* Docker Logs
* Log Volume
* Error Count
* Warning Count
* Info Count
* Debug Count

The dashboard successfully displays Docker log information collected by Grafana Alloy and stored in Grafana Loki.

---

## 12. Grafana Alerting

A Grafana alert rule was created to detect Docker errors.

### Alert Rule

```text
Docker Error Alert
```

### Alert Query

The alert uses Loki log data to detect Docker errors.

### Alert Condition

```text
Error count > 0
```

### Evaluation

```text
Evaluation Interval = 1 minute
Pending Period      = 1 minute
```

The alert was successfully tested and reached the:

```text
Firing
```

state.

This confirms that Grafana successfully detected the configured Docker error condition.

---

## 13. Application Recovery / Self-Healing Test

Application recovery was tested by terminating the running Docker application container.

The Docker container was automatically returned to a running state through the configured container lifecycle behavior.

### Recovery Verification

Container status was verified as:

```text
Status = running
```

The application logs were also verified after recovery:

```text
Hello, DevOps!
```

This confirms that the application successfully recovered and became operational again after termination.

---

## 14. Verification

The following project components were successfully verified:

* Python application
* Docker image
* Docker container
* Git repository
* GitHub repository
* GitHub Actions workflow
* Nomad job validation
* Nomad deployment
* Healthy Nomad allocation
* Grafana Alloy
* Grafana Loki
* Loki readiness
* Docker log collection
* Docker logs available in Loki
* Grafana connected to Loki
* Grafana monitoring dashboard
* Log Volume panel
* Error Count panel
* Warning Count panel
* Info Count panel
* Debug Count panel
* Grafana Error Alert
* Alert successfully reached Firing state
* Application recovery verified

---

## 15. Project Structure

The main project structure is:

```text
devops-intern-final/
│
├── .github/
│   └── workflows/
│       └── ci.yml
│
├── monitoring/
│   └── config.alloy
│
├── nomad/
│   └── hello.nomad
│
├── hello.py
├── Dockerfile
└── README.md
```

---

## 16. Project Status

The DevOps Intern Final Assessment project has been successfully implemented and tested.

The project demonstrates:

```text
Application
     |
     v
Version Control
     |
     v
CI/CD
     |
     v
Containerization
     |
     v
Orchestration
     |
     v
Centralized Logging
     |
     v
Monitoring
     |
     v
Alerting
     |
     v
Application Recovery
```

---

## 17. Conclusion

This project demonstrates the practical implementation of an end-to-end DevOps workflow.

It combines application development, Git and GitHub, GitHub Actions CI/CD, Docker containerization, HashiCorp Nomad orchestration, Grafana Alloy log collection, Grafana Loki centralized logging, Grafana visualization, alerting, and application recovery into a single workflow.

The major components were successfully configured, tested, and verified.

---

## Final Result

The project successfully demonstrates a complete DevOps lifecycle from source code to deployment, centralized logging, monitoring, alerting, and application recovery.

**Status: Successfully Completed and Verified**

