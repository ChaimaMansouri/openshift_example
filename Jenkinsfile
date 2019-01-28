pipeline {
  agent {
    kubernetes {
      label 'mypod'
      yaml """
        apiVersion: v1
        kind: Pod
        spec:
          containers:
          - name: python
            image: python:3.7-alpine3.8
            command:
            - cat
            tty: true
       """
    }
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
