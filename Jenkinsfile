def label = "mypod-${UUID.randomUUID().toString()}"
podTemplate(label: label,cloud:'openshift', containers: [
    containerTemplate(name: 'python', image: 'python:3.7-alpine3.8', ttyEnabled: true, command: 'cat'),
    containerTemplate(name: 'postgres', image: 'postgres:9.6', ttyEnabled: true, command: 'cat'),
    containerTemplate(name: 'rabbitmq', image: 'rabbitmq:3-management', ttyEnabled: true, command: 'cat'),
    containerTemplate(name: 'redis', image: 'redis:4-alpine', ttyEnabled: true, command: 'cat'),
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

         stage('Get Django project') {
            container('postgres') {
                stage('Set env variables for postgres') {
                    sh '''
                     POSTGRESQL_USER=user
                     POSTGRESQL_DATABASE=db
                     POSTGRESQL_PASSWORD=password
                    '''
                }
            }
        }


}
}
