pipeline {
agent any
parameters {
    string(name: 'USERID', defaultValue: '',
    description: 'Enter your userid')
}
    stages {
        stage('Login') {
            steps {
            echo "Active user is now ${params.USERID}"
            }

        }
        stage(masds) {
        steps {
            echo('HEllo')

        }
        }
        stage ('Login1'){
            steps {
                echo "step 2"
            }                    
        }

        stage ('Login2') {
            steps {
                echo "step 3"
            }                    
        }
    }
}
