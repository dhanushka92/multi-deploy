
pipeline {
    agent any
    environment{
         AWS_ACCOUNT_ID="158589268268"
         AWS_DEFAULT_REGION = "me-south-1"
         IMAGE_REPO_NAME= "agcars-frontend"
         registry= "${AWS_ACCOUNT_ID}.dkr.ecr.${AWS_DEFAULT_REGION}.amazonaws.com/${IMAGE_REPO_NAME}"
         registryCredential='uatkeys'
         dockerImage=''
         IMAGE_TAG="${env.BUILD_ID}"
         CLUSTER_NAME= "agcars"
         SERVICE_NAME= "agcars-frontend"
         TASK_DEFINITION_NAME= "agcars-frontend"
     }
    stages {
        stage('git') {
            steps {
               git branch: 'main', url: 'https://github.com/dhanushka92/multi-deploy.git'
            }
        }
               
       stage('Update task definition'){
           steps{
               
               withAWS(credentials: 'uatkeys', region: 'me-south-1') {
               script{
                    sh './script.sh'
               }
               }
          }
       }
    }
}
                
                
