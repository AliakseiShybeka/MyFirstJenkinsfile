pipeline {
    agent any

    tools {
        // Install the Maven version configured as "3.6.3" and add it to the path.
        maven "3.6.3"
    }

    stages {
        stage('Build') {
            steps {
                // Get some code from a GitHub repository
                git 'https://github.com/openliberty/guide-maven-intro.git'

                // Run Maven on a Unix agent.
                sh "mvn liberty:run"

                // To run Maven on a Windows agent, used
                // bat "mvn -Dmaven.test.failure.ignore=true clean pacgkage"
            }


        }
    }
}
