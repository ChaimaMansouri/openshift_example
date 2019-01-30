def label = "mypod-${UUID.randomUUID().toString()}"
podTemplate(label: label,cloud:'openshift', containers: [
    containerTemplate(name: 'python', image: 'python:3.7-alpine3.8', ttyEnabled: true, command: 'cat'),
  ]) {

    node(label) {
            stage('test python container') {
            git 'https://github.com/ChaimaMansouri/openshift_example'
            container('python') {
                stage('Build a python project') {
                    sh '''
                     pip3 install --user -r requirements.txt
                    '''
                }
            }
        }

    }
}
