pipeline {
agent any 
     stages {
         stage ('git') {
         steps {
             git 'http://13.231.128.96/rkkrao/terra-jenk-s3.git'
            }
        }
    stage ('terraform') {
             steps {
                    echo "executing terraform"
                     sh 'terraform init'
                     sh 'terraform plan'
                     sh 'terraform apply -auto-approve'
                    }
             }
    }
}
             
