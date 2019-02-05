def label = "mypod-${UUID.randomUUID().toString()}"
podTemplate(label: label,cloud:'openshift', containers: [
    containerTemplate(name: 'python', image: 'python-35-rhel7', ttyEnabled: true, command: 'cat'),
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
                    stage('create new app') {
                    sh '''
                     oc new-app registry.access.redhat.com/rhscl/python-35-rhel7~https://github.com/chaima-mnsr/openshift_example --strategy=source
                    '''
                }
                }
}
}

}
