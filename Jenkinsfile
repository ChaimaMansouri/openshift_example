def label = "mypod-${UUID.randomUUID().toString()}"
podTemplate(label: label,cloud:'openshift', containers: [
    containerTemplate(name: 'python', image: 'python:3.7-alpine3.8', ttyEnabled: true, command: 'cat'),
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


}
}

  stage('create postgres pod') {

        script {
            openshift.withCluster() {
                openshift.withProject() {
                    openshift.newApp('openshift/postgresql-92-centos7','-e POSTGRESQL_USER=postgres','-e POSTGRESQL_DATABASE=conversations','-e POSTGRESQL_PASSWORD=postgres')

                }
            }

    }
}

    stage('create app pod') {

        script {
            openshift.withCluster() {
                openshift.withProject() {
                  openshift.newApp('registry.access.redhat.com/rhscl/python-35-rhel7~https://github.com/chaima-mnsr/openshift_example','--strategy=source')
                }
            }
        }

    }