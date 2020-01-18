pipeline {
    agent any

    stages {
        stage('Code pull') {
            steps {
                // Get some code from a GitHub repository
                git 'https://github.com/RanaRanvijaySingh/FlutterStarter.git'
            }
        }
        stage('Build') {
            steps {
                sh  '''
                        #!/bin/sh
                        flutter build apk --debug
                    '''
            }
        }
        stage('Test') {
            steps {
                sh 'flutter test'
            }
        }
        stage('Publish') {
            steps {
                appCenter apiToken: 'f51cf29ba6b2234a84c999bc37348db84624c615',
                        ownerName: 'ranaranvijaysingh9-gmail.com',
                        appName: 'Flutter-Crystal-Cruise',
                        pathToApp: 'build/app/outputs/apk/debug/app-debug.apk',
                        distributionGroups: 'flutter-crystal-cruise'
            }
        }
    }
}
