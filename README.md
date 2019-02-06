### To build:
#### using remote distribution:
```bash
docker image build -f Dockerfile -t ice-opencds .
```
#### using locally downloaded opencds-ice.tar.gz:
```bash
docker image build -f Dockerfile.local -t ice-opencds .
```

### To run in background:
```bash
docker run -d -p <random localhost port>:8080 ice-opencds
```

### To list running containers:
```bash
docker container ls --all
```

### To execute a bash shell on the container:
```bash
docker exec -it <name from running docker container above> bash
```

### To stop:
```bash
docker container stop <name from running docker container above>
```

### To remove:
```bash
docker container rm <name from running docker container above>
```