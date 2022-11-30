pipeline {
  agent {label 'build2'}
  stages {
    stage ('my build') {
      steps {
        sh 'mvn package'
        sh 'scp -R target/hello-world-war-1.0.0.war jenkins@172.31.15.200:/opt/tomcat/webapps'  
      }
    }
   stage ('my deploy') {
     agent {label 'build_server'}
     steps {
       sh 'sudo sh /opt/apache-tomcat-10.0.27/bin/shutdown.sh'
       sh 'sleep 2'
       sh 'sudo sh /opt/apache-tomcat-10.0.27/bin/startup.sh'
     }
   }
  }
}
        
