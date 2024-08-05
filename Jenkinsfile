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
            steps {
                sh 'java Sum 1 25 >> out.txt'
                sh 'java Sum 26 50 >> out.txt'
                sh 'java Sum 51 75 >> out.txt'
                sh 'java Sum 75 100 >> out.txt'
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