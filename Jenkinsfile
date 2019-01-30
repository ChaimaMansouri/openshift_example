def label = "mypod-${UUID.randomUUID().toString()}"
podTemplate(label: label,cloud:'openshift', containers: [
    containerTemplate(name: 'python', image: 'python:3.7-alpine3.8', ttyEnabled: true, command: 'cat'),
  ]) {

    node(label) {
            stage('test python container') {
            container('python') {
                stage('Build a python project') {
                    sh '''
                     pip3 install -r requirements.txt
                    '''
                }
                stage('Build a python project') {
                    sh '''
                     python3 manage.py runserver
                    '''
                }
            }
        }

    }
}
