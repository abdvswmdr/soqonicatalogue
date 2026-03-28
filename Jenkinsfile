pipeline {
    agent any

    environment {
        GROUP  = 'abdvswmdr'
        REPO   = 'soqonicatalogue'
        COMMIT = "${env.GIT_COMMIT?.take(7) ?: 'latest'}"
    }

    stages {
        stage('build') {
            steps {
                echo "Building ${env.GROUP}/${env.REPO}-dev"
                sh "docker build -t ${env.GROUP}/${env.REPO}-dev -f ./docker/soqonicatalogue/Dockerfile ."
            }
        }

        stage('test') {
            steps {
                echo 'Running unit tests inside dev container'
                sh "docker run --rm ${env.GROUP}/${env.REPO}-dev go test ./..."
            }
        }

        stage('package') {
            steps {
                echo 'Building release image'
                sh "docker build -t ${env.GROUP}/${env.REPO}:${env.COMMIT} -f ./docker/soqonicatalogue/Dockerfile-release ."
                sh "docker tag ${env.GROUP}/${env.REPO}:${env.COMMIT} ${env.GROUP}/${env.REPO}:latest"
                echo 'this pipeline has completed...'
            }
        }
    }

    post {
        always {
            echo 'Pipeline finished.'
        }
    }
}
