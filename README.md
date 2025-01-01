# armagetron
Docker image for Armagetron Advanced

## Usage
### Docker Compose
```
docker compose up -d
```

The configuration directory, by default, is ./armagetron. [Documentation on configuration files](http://wiki.armagetronad.org/index.php?title=Server_Administration_Guide#Examples)

### Manual

```
docker run -d --platform linux/amd64 \
  -p 4534:4534/udp --name armagetron-server \
  -v $PWD/armagetron:/etc/armagetronad \
  cwadley/armagetron
```
