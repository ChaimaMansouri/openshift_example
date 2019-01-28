pipeline {
    agent {docker {image 'python:3.7-alpine3.8'}}
    environment {
        VIRTUAL_ENV = "${env.WORKSPACE}/venv"
    }

    stages {


        stage ('Install_Requirements') {
            steps {
                sh """
                    [ -d venv ] && rm -rf venv
                    #virtualenv
                    python3 -m venv
                    #. venv/bin/activate
                    export PATH=${VIRTUAL_ENV}/bin:${PATH}
                    pip3 install --upgrade pip
                    pip3 install -r requirements.txt

                """
            }
        }



        stage ('Unit Tests') {
            steps {
                sh """
                    #. venv/bin/activate
                    export PATH=${VIRTUAL_ENV}/bin:${PATH}
                  
                """
            }


        }


    }


}
