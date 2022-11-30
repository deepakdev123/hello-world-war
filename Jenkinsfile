pipeline {
  agent { label 'build_server' }
  stages {
    stage('mybuild') {
      steps {
        sh 'mvn package'
        sh 'ls'
        sh 'sh 'sh 'scp -R target/hello-world-war-1.0.0.war root@172.31.15.200:/opt/tomcat/webapps'
      }
    }
    stage('mydeploy') {
      steps {
        sh 'sudo cp -R target/hello-world-war-1.0.0.war /opt/apache-tomcat-10.0.27/webapps/'
        sh 'sudo sh /opt/apache-tomcat-10.0.27/bin/shutdown.sh'
        sh 'sleep 2'
        sh 'sudo sh /opt/apache-tomcat-10.0.27/bin/startup.sh'
      }
    }
  }
}
        
