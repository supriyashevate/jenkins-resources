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


    }   
}
