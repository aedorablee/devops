node {
  stage('clone') {
    checkout scm
  }
  stage('pull') {
    sh "git config --global user.email 'aedorablee@gmail.com'"
    sh "git config --global user.name 'aedorablee'"
    sh "git pull origin devops"
    sh "scp -i ajkim_us.pem index.html ec2-user@172.16.0.63:/home/ec2-user/index.html"
    sh "ssh -i ajkim_us.pem ec2-user@172.16.0.63"
    sh "sudo cp /home/ec2-user/index.html /usr/share/httpd/noindex/index.html && Y"
    sh "sudo systemctl restart httpd"
  }
}
