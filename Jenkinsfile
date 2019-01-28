pipeline {
    agent any


    stages {


        stage ('Install_Requirements') {
            steps {
                sh """

                    #virtualenv
                    python3 -m venv
                    cd venv/bin
                    source env/bin/activate
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
