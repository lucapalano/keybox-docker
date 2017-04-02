KeyBox
===================

This image may be used to run a container with KeyBox.

### Available versions
- 2.89.00 (latest)

### How to use this image

The fastest command to run the container:
```
docker run -it -p 8443:8443 lucapalano/keybox:latest
```
8443 is the keybox default port. You should use it to connect to the keybox instance running into the container.

The fastest command to run it and assign a name:
```
docker run -it --name <name> -p 8443:8443 lucapalano/keybox
```

This will make persistent the keybox home directory with db, configuration, etc... (everything under /home/keybox/KeyBox-jetty/):
```
docker run -it --name keybox -p 8443:8443 -v /home/keybox/KeyBox-jetty/ lucapalano/keybox
```
*/home/keybox/KeyBox-jetty/* is the path where keybox is installed and where your configuration, db and everything else will reside.

When starting the container, you may use the option -i if you want to be able to see the stdout, as follow:
```
docker start -i <name>
```

### Author
Luca Palano - contact@lpzone.it

----------
*KeyBox* is made by Sean Kavanagh.

Home - http://sshkeybox.com/
Github - https://github.com/skavanagh/KeyBox.git
