node {
  stage('clone') {
    checkout scm
  }
  stage('pull') {
    sh "git config --global user.email 'aedorablee@gmail.com'"
    sh "git config --global user.name 'aedorablee'"
    sh "git pull origin devops"
    sh "chmod 400 ajkim_us.pem"
    sh "scp -i ajkim_us.pem index.html ec2-user@172.16.0.63:/home/ec2-user/index.html"
    sh "ssh -i ajkim_us.pem ec2-user@172.16.0.63"
<<<<<<< HEAD
    sh "sudo su"
    sh "cp /home/ec2-user/index.html /usr/share/httpd/noindex/index.html && Y"
    sh "systemctl restart httpd"
=======
    sh "sudo /usr/bin/cp -f /home/ec2-user/index.html /usr/share/httpd/noindex"
    sh "sudo systemctl restart httpd"
>>>>>>> 3b5ccb9b865c8752c03a87a96a8477def3e3c967
  }
}
