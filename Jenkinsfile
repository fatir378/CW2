node {    
      def app     
      stage('Clone repository') {               
             
            checkout scm    
      }

      

      stage('Build image') {         
         
           agent { label 'docker'}
           steps{

             sh "docker build -f Dockerfile -t fatir22/cw2 ./" 
                
       }
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
