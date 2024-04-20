pipline {
    agent any

    stages{

        stage("setup Python Virtaul ENV"){
            steps{
                sh '''
                    chmod +x envsetup.sh
                    ./envsetup.sh
                '''
            }

        }

        stage("Setup Gunicorn"){
            steps{
                sh '''
                    chmod +x gunicorn.sh
                    ./gunicorn.sh
                '''
            }
        }

        stage("Setup Nginx"){
            steps{
                sh '''
                    chmod +x nginx.sh
                    ./nginx.sh
                '''
            }
        }
    }

}