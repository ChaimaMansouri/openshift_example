def label = "mypod-${UUID.randomUUID().toString()}"
podTemplate(label: label,cloud:'openshift', containers: [
    containerTemplate(name: 'python', image: 'python:3.7-alpine3.8', ttyEnabled: true, command: 'cat'),
  ]) {

    node(label) {
            stage('Get Django project') {
            git 'https://github.com/ChaimaMansouri/openshift_example'
            container('python') {
                stage('Install requirements') {
                    sh '''
                     pip3 install --user -r requirements.txt
                    '''
                }
            }
        }
        stage('Run the app')
        {
            container('python') {
                stage('Run app') {
                    sh '''
                     python3 manage.py runserver &
                    '''
                }
            }
        }

    }
}
