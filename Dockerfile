FROM centos

# Update
RUN yum -y update

# Install software 
RUN yum -y install mariadb mariadb-devel mariadb-lib git
#RUN yum -y groupinstall "Development Tools"

# Clone repo
#RUN git clone https://github.com/tagliateller/tpcc-mysql.git

# Compile tpcc-client

# Datenbank anlegen
#RUN mysqladmin -u root --password=my-secret-pw -h $DBHOST create tpcc2000

# Execute tpcc-load

# Execute tpcc-start
