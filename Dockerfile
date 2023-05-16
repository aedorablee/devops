FROM centos:7
# Install Apache
RUN yum -y update && yum install -y httpd httpd-tools && yum install -y telnet
RUN mkdir /var/www/html/code
# change index.html
RUN echo '<!DOCTYPE html> \
<head> \
<title> DOCKERFILE FROM ECR2222!! </title> \
</head> \
<body style="text-align:center"> \
<h2> DEPLOYED BY JENKINS </h2> \
</body> \
</html> ' > /var/www/html/code/index.html
CMD ["systemctl","restart","httpd"]
# Start Apache
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
