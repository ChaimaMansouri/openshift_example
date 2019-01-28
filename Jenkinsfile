pipeline {
    agent any

    stages {


        stage ('Install_Requirements') {
            steps {
                sh """
                    pip3 install -r requirements.txt

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
