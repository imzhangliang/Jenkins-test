pipeline {
    agent any

    stages {
        stage('Initialization') {
            steps {
                sh 'rm -rf out.txt'
                sh 'touch out.txt'
            }
        }
        stage('Build') {
            steps {
                sh 'javac Sum.java'
            }
        }
        stage('sum') {
            parallel {
                stage('1-25') {
                    steps {
                        sh 'java Sum 1 25 >> out.txt'
                    }
                }
                stage('26-50') {
                    steps {
                        sh 'java Sum 26 50 >> out.txt'
                    }
                }
                stage('51-75') {
                    steps {
                        sh 'java Sum 51 75 >> out.txt'
                    }
                }
                stage('76-100') {
                    steps {
                        sh 'java Sum 76 100 >> out.txt'
                    }
                }
            }
        }
        stage('All Sum') {
            steps {
                sh 'cat out.txt'
                sh 'bash sum_numbers.sh out.txt'
            }
        }
    }
}