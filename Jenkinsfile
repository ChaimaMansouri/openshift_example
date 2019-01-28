pipeline {
 agent any


    stages {
        stage ('Install_Requirements') {
            steps {
                node('docker'){
                    sh """
                        pip3 install --user -r requirements.txt

                    """
                }
            }
        }
        stage ('Unit Tests') {
            steps {
                node('docker'){
                    sh """
                        #. venv/bin/activate
                        python3 manage.py runserver

                    """
                }
            }


        }


    }


}
