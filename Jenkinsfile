pipeline {
    agent any

    stages {


        stage ('Install_Requirements') {
            steps {
                sh """
                    sudo dnf install python3-pip
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
