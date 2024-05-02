pipeline {
    agent any

    environment {
        DOCKER_IMAGE = 'melekgezer-html-server'
        CONTAINER_NAME = 'melekgezer-container'
        PORT_MAPPING = '80:4444'
    }

    stages {
        stage('Build Docker Image') {
            steps {
                script {
                    docker.build(env.DOCKER_IMAGE)
                }
            }
        }
        
        stage('Run Docker Container') {
            steps {
                script {
                    docker.image(env.DOCKER_IMAGE).run("-d --name ${env.CONTAINER_NAME} -p ${env.PORT_MAPPING}")
                }
            }
        }
    }
}