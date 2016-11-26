FROM centos

# Update
RUN yum -y update

# Install software 
RUN yum -y install mariadb mariadb-devel mariadb-lib git
RUN yum -y groupinstall "Development Tools"

# Clone repo
RUN git clone https://github.com/tagliateller/tpcc-mysql.git

# Compile tpcc-client

#$ docker start -a some-app
#PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
#HOSTNAME=184075bae8bd
#MYSQL_PORT=tcp://172.17.0.2:3306
#MYSQL_PORT_3306_TCP=tcp://172.17.0.2:3306
#MYSQL_PORT_3306_TCP_ADDR=172.17.0.2
#MYSQL_PORT_3306_TCP_PORT=3306
#MYSQL_PORT_3306_TCP_PROTO=tcp
#MYSQL_NAME=/some-app/mysql
#MYSQL_ENV_MYSQL_ROOT_PASSWORD=my-secret-pw
#MYSQL_ENV_GOSU_VERSION=1.7
#MYSQL_ENV_MARIADB_MAJOR=10.1
#MYSQL_ENV_MARIADB_VERSION=10.1.19+maria-1~jessie
#HOME=/root

# Datenbank anlegen
RUN mysqladmin -u root --password=my-secret-pw -h $MYSQL_PORT_3306_TCP_ADDR create tpcc3000

# Execute tpcc-load

# Execute tpcc-start
