def label = "mypod-${UUID.randomUUID().toString()}"
podTemplate(label: label,cloud:'openshift', containers: [
    containerTemplate(name: 'python', image: 'python:3.7-alpine3.8', ttyEnabled: true, command: 'cat'),
  ]) {

    node(label) {
            stage('Get Django project') {
            container('python') {
            git 'https://github.com/ChaimaMansouri/openshift_example'
                stage('Install requirements') {
                    sh '''
                     pip3 install --user -r requirements.txt
                    '''
                }
            }
        }
    stage('create') {
    container('python') {
        script {
            openshift.withCluster() {
                openshift.withProject() {
                echo "Unable to con"
                  //openshift.newApp('registry.access.redhat.com/rhscl/python-35-rhel7~https://github.com/ChaimaMansouri/openshift_example','--strategy=source')

                }
            }
        }
    }
}

}
}