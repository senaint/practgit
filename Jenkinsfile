
node {

    stage('SCM checkout'){
      git credentialsId: 'git-cred', url: 'https://github.com/senaint/practgit', branch: 'master'
    }

    stage('Environment') {
      sh 'git --version'
      echo "Branch: ${env.BRANCH_NAME}"
      sh 'docker -v'
      sh 'printenv'
    }

//  stage('build docker image') {
//     sh 'docker build -t senaint/chatscrum:latest .'
//  }

    stage('Deploy'){

      sh 'docker-compose up -d'
      sh 'docker ps'
//    sh 'docker run -d senaint/chatscrum:latest'
//    sh 'docker exec -it senaint/chatscum:latest /web/housekeeping.sh'
      

      }
    }
