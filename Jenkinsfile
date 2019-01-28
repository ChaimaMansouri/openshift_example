pipeline {
 agent {
      label "docker"
  }


    stages {
        stage ('Install_Requirements') {
            steps {
                container('python'){
                    sh """
                        pip3 install --user -r requirements.txt

                    """
                }
            }
        }
        stage ('Unit Tests') {
            steps {
                container('python'){
                    sh """
                        #. venv/bin/activate
                        python3 manage.py runserver

                    """
                }
            }


        }


    }


}
