pipeline {
    agent any

    environment {
        DOCKER_IMAGE = 'nginx-html-server'
        CONTAINER_NAME = 'dev_ngir-container'
        PORT_MAPPING = '4444:80'
    }

    stages {

        stage('Cleanup') {
            steps {
                script {
                    bat "docker stop ${env.CONTAINER_NAME} || exit 0"
                    bat "docker rm ${env.CONTAINER_NAME} || exit 0"

                    bat "docker rmi ${env.DOCKER_IMAGE} || exit 0"
                }
            }
        }
        
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
} docker.build(env.DOCKER_IMAGE)
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
    

