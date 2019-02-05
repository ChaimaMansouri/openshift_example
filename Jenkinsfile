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

        script {
        withEnv(["POSTGRESQL_USER=user","POSTGRESQL_DATABASE=db","POSTGRESQL_PASSWORD=password"]) {
            openshift.withCluster() {
                openshift.withProject() {
                    def created = openshift.newApp( 'https://github.com/openshift/ruby-hello-world' )
                    echo "new-app created ${created.count()} objects named: ${created.names()}"
                    created.describe()
                }
            }
        }
    }
}

}
}