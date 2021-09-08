pipeline{
    agent any
    stages{
        stage("checkout"){
            steps{
                echo "(*) Getting the repo.."
                git url: 'https://github.com/saipavan4518/test-app.git'
                echo "(+) Succesfully cloned the repo "
            }
        }
        stage("Build"){
            steps{
                echo "(*) Building the docker container..."
                sh 'docker build --tag test-app:v1.0 .'
                echo "(+) Succesfully built the container"
            }
        }
        stage("Run"){
            steps{
                echo "(*) Running the docker container..."
                sh 'docker run -itd -p 7000:5000 -p4000:3000 --env-file ~/.env test-app:v1.0'
                echo "(+) Running the container"
            }
        }
        stage("Test"){
            steps{
                echo "(+) Succesfully executed the Application"
            }
        }
    }
}