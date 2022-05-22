pipeline {
agent any
parameters { choice(name: 'ENV', choices: ['dev', 'prod'], description :'Select Environment') }
stages {
    stage('Terraform Init'){
            steps {
                sh "cp env-${ENV}/Terrafile . ; terrafile"
                sh "terraform init -backend-config=env-${ENV}/${ENV}-backend.tfvars"

            }
         }
    stage('Terraform Plan'){
            steps {
                sh "cp env-${ENV}/Terrafile ."
                sh "terraform plan  -var-file=env-${ENV}/${ENV}.tfvars"

            }
         }
    }
}