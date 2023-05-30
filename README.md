## simple-flask-app-docker

### Overview

This guide will help you set up a simple Flask application running in a Docker container on port 5000. The application will then be accessible on your local machine at `localhost:5508`. We'll make use of your existing Flask application, `requirements.txt`, and Dockerfile to build and run the Docker image.

### Prerequisites

Ensure Docker is installed and running on your local machine.

### Steps

#### 1. Review Existing Files

You should already have the following files in your project directory:

- `app.py` - This is your Flask application.
- `requirements.txt` - This file lists the Python dependencies for your application, including Flask.
- `Dockerfile` - This file is used by Docker to build an image for your application.

#### 2. Build Docker Image

Build the Docker image using the following command:

```
docker buildx build -f Dockerfile -t yourusername/appname .
```

#### 3. Run Docker Container

Next, run the Docker container with the built image using the following command:

```
docker run -it --name flaskserver -p 5508:5000 -d yourusername/appname
```

#### 4. Verify Setup

You should now be able to access your Flask application by navigating to `localhost:5508` in your web browser. If everything is set up correctly, you should see your Flask application running as expected.

#### 5. Tests

Open a broswer and go to the URL

```
http://localhost:5508					=> Welcome
http://localhost:5508/how%20are%20you?					=> I'm good, how about you?
```
