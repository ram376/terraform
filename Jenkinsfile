pipeline {
agent any 
     stages {
         stage ('git') {
         steps {
             git 'https://github.com/ram376/terraform.git'
            }
        }
    stage ('terraform') {
             steps {
                    echo "executing terraform"
                     sh 'terraform validate'
                     sh 'terraform init'
                     sh 'terraform plan'
                     sh 'terraform apply -auto-approve'
                    }
             }
    }
}
             
