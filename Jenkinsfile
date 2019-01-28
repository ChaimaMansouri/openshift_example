pipeline {
  agent {
      label "python"
  }
    stages {
        stage ('Install_Requirements') {
            steps {

                    sh """
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
