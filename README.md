To build:
    docker image build -t ice-opencds .

To run in background:
    docker run -d -p <random localhost port>:8080 ice-opencds

To list running containers:
    docker container ls --all

To execute a bash shell on the container:
    docker exec -it <name from running docker container above> bash

To stop:
    docker container stop <name from running docker container above>

To remove:
    docker container rm <name from running docker container above>

