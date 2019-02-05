def label = "mypod-${UUID.randomUUID().toString()}"
podTemplate(label: label,cloud:'openshift', containers: [
    containerTemplate(name: 'python', image: 'python-35-rhel7', ttyEnabled: true, command: 'cat'),
  ]) {

    node(label) {
            stage('Get Django project') {
            container('python') {
            git 'https://github.com/chaima-mnsr/openshift_example'
                stage('Install requirements') {
                    sh '''
                     pip3 install --user -r requirements.txt
                    '''
                }
            }
        }
/*    stage('create') {

        script {
        withEnv(["POSTGRESQL_USER=user","POSTGRESQL_DATABASE=db","POSTGRESQL_PASSWORD=password"]) {
            openshift.withCluster() {
                openshift.withProject() {
                    openshift.newApp('openshift/postgresql-92-centos7')

                }
            }
        }
    }
}
*/
}
}