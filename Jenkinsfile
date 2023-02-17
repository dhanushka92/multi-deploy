
pipeline {
    agent any
    environment{
         AWS_ACCOUNT_ID="434746796096"
         AWS_DEFAULT_REGION = "me-south-1"
         IMAGE_REPO_NAME= "ag-power"
         registry= "${AWS_ACCOUNT_ID}.dkr.ecr.${AWS_DEFAULT_REGION}.amazonaws.com/${IMAGE_REPO_NAME}"
         registryCredential='devkeys'
         dockerImage=''
         IMAGE_TAG="${env.BUILD_ID}"
         CLUSTER_NAME= "AG-Website"
         SERVICE_NAME= "AG-Power"
         TASK_DEFINITION_NAME= "AG-Power"
     }
    stages {
        stage('git') {
            steps {
               git branch: 'develop', url: 'https://github.com/dhanushka92/multi-deploy.git'
            }
        }
               
       stage('Update task definition'){
           steps{
               
               withAWS(credentials: 'devkeys', region: 'me-south-1') {
               script{
                    sh './script.sh'
               }
               }
          }
       }
    }
}
                
                
