node {
  try {
    stage('Checkout') {
      checkout scm
    }
    stage('Environment') {
      sh 'git --version'
      echo "Branch: ${env.BRANCH_NAME}"
      sh 'docker -v'
      sh 'printenv'
    }
  
    stage('Deploy'){
      if(env.BRANCH_NAME == 'master'){
        sh 'docker build -t chatscrum --no-cache .'
        sh 'docker tag chatscrum senaint/chatscrum'
        sh 'docker-compose up -d'
        sh 'docker exec -it chatscum /web/housekeeping.sh'
       
      }
    }
  }
  catch (err) {
    throw err
  }
}
