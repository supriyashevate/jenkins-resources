pipeline {

    agent {
        node {
            label 'master'
        }
    }

    stages {
        
        stage('Code Checkout') {
            steps {
              checkout([$class: 'GitSCM', 
		 branches: [[name: '*/featur*']], 
		 doGenerateSubmoduleConfigurations: false,
		 extensions: [], 
		 submoduleCfg: [], 
		 userRemoteConfigs: [[credentialsId: 'supriya_git_cred', url: 'https://github.com/supriyashevate/jenkins-resources']]
		])
            }
        }

        stage(' Unit Testing') {
            steps {
                sh """
                echo "Running Unit Tests"
                """
            }
        }

        stage('Code Analysis') {
            steps {
                sh """
                echo "Running Code Analysis"
                """
            }
        }

        stage('Build Deploy Code') {
            when {
                branch 'develop'
            }
            steps {
                sh """
                echo "Building Artifact"
                """

                sh """
                echo "Deploying Code"
                """
            }
        }

    }   
}
