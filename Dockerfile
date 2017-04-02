FROM centos:latest
LABEL author.name = "Luca Palano" \
      author.email = "contact@lpzone.it" \
      dockerfile.version = "1.0" \
      projectURI = "https://github.com/skavanagh/KeyBox" \
      keybox.version = "2.89.00"


WORKDIR /home/keybox

ENV java8PackageFileName "jdk-8u121-linux-x64.rpm"
ENV keyboxPackageName "keybox-jetty-v2.89_00.tar.gz"

RUN yum update -y && \
    yum install wget -y && \
    wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" "https://download.oracle.com/otn-pub/java/jdk/8u121-b13/e9e7ea248e2c4826b92b3f075a80e441/${java8PackageFileName}" && \
    yum localinstall ${java8PackageFileName} -y && \
    wget "https://github.com/skavanagh/KeyBox/releases/download/v2.89.00/${keyboxPackageName}"

RUN tar xvfz ${keyboxPackageName}

WORKDIR /home/keybox/KeyBox-jetty

EXPOSE 8443

CMD ["./startKeyBox.sh"]