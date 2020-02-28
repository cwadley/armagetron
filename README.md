# armagetron
Docker image for Armagetron Advanced

## Usage
### Basic
```
docker run -d -p 4534:4534/udp --name armagetron-server cwadley/armagetron
```

### Custom configuration
[Documentation on configuration files](http://wiki.armagetronad.org/index.php?title=Server_Administration_Guide#Examples)
```
docker run -d -p 4534:4534/udp --name armagetron-server \
  -v /etc/armagetron:/etc/armagetronad \
  cwadley/armagetron
```
