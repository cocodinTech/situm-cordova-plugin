
node('androidci') {
    stage('Checkout SCM') {
        checkout scm
    }

    stage('Clean Android'){
        sh "cd src/android && ./gradlew clean"
    }

    try {
        stage('Test Android') {
            sh "cd src/android && ./gradlew test --continue"
        }
    } finally {
        stage('Publish tests') {
            junit 'src/android/app/build/test-results/*/*.xml'
        }
    }
}

node('vm1-docker') {

    stage('Checkout SCM') {
        // checkout scm
        sh "rm -rf situm-cordova-plugin"
        sh "git clone https://github.com/situmtech/situm-cordova-plugin.git"
        sh "git checkout jenkins-test"
    }

    stage('Test JS') {
        def kubectl = docker.image('node:10.6-slim')
        kubectl.pull()
        kubectl.inside("-u 0") {
            sh "npm install"
            sh "npm test"
        }
    }

    stage('Generate JSDoc') {
      def kubectl = docker.image('node:10.6-slim')
      kubectl.pull()
      kubectl.inside("-u 0") {
          sh "cat package.json"
          sh "npm run jsdoc"
      }
    }
}
