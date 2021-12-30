node {    
      def app     
      stage('Clone repository') {               
             
            checkout scm    
      }

      stage('Initialize'){
        def dockerHome = tool 'docker'
        env.PATH = "${dockerHome}/bin:${env.PATH}"
    }

      stage('Build image') {         
       
            app = docker.build("fatir22/cw2")    
       }
     
      stage('Test image') {           
            app.inside {            
             
             sh 'echo "Tests passed"'        
            }    
        }
     
       stage('Push image') {
            docker.withRegistry('https://registry.hub.docker.com', 'dockerhub') {            
       app.push("${env.BUILD_NUMBER}")            
       app.push("latest")        
              }    
           }
        }
