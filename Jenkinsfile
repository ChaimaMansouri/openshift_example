pipeline {
    agent any

    stages {


        stage ('Install_Requirements') {
            steps {
                sh """
                    python3 -m venv env
                    source ./env/bin/activate 
                    python -m pip install
                    pip3 install --user -r requirements.txt

                """
            }
        }



        stage ('Unit Tests') {
            steps {
                sh """
                    #. venv/bin/activate
                    python3 manage.py runserver
                  
                """
            }


        }


    }


}
