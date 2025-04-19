# Jenkins CI/CD Pipeline Project

This repository demonstrates the implementation of a simple CI/CD pipeline using Jenkins and Docker. The purpose of this project is to automate the build, test, and deployment processes of a basic Python Flask application using Jenkins pipelines.

## Project Structure

jenkin-demo/ ├── Jenkinsfile # Jenkins pipeline configuration file ├── app.py # Main Python Flask application file ├── Dockerfile # Dockerfile to containerize the Flask app ├── requirements.txt # Python dependencies for the Flask application ├── jenkin-demo.sh # Example shell script ├── index.html # HTML file to serve via Flask ├── successful_build.png # Screenshot showing successful pipeline execution


## Pipeline Overview

The CI/CD pipeline is defined in the `Jenkinsfile` and consists of the following stages:

1. **Build**  
   - Install dependencies using `pip` from `requirements.txt`.
   - Build the Docker image for the Flask application.

2. **Test**  
   - This stage is currently a placeholder. You can expand this stage to include test execution, using a framework like `pytest` or `unittest` for unit tests.

3. **Deploy**  
   - Deploys the application by running the Docker container.
   - Can be extended to deploy to any cloud platform or container registry.

## Tools Used

- **Jenkins**: Automates the pipeline execution, from build to deploy.
- **Docker**: Used for containerizing the Flask application to run it in an isolated environment.
- **GitHub**: Hosts the project, integrated with Jenkins to trigger builds on code changes.

## How to Run

1. Install Docker and Jenkins on your system, or use a cloud instance of Jenkins.
2. Clone this repository to your Jenkins server or connect it through GitHub.
3. Ensure Jenkins has Docker access (e.g., add Jenkins user to the Docker group).
4. Set up a Jenkins pipeline job that points to this repository.
5. Commit changes to this repository to trigger the pipeline automatically.
6. Check the Jenkins dashboard to monitor the progress of the pipeline stages.

## Screenshot

The following screenshot demonstrates a successful build execution of the pipeline:

file name- successful_build.png

## Outcome

This project illustrates a simple but effective Jenkins CI/CD pipeline that automates the process of building, testing, and deploying a Python Flask application. By utilizing Docker, the pipeline ensures that the application is containerized, making it easy to deploy in various environments.
