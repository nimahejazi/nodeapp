node {
  stage 'Checkout'
  git url: 'https://github.com/nimahejazi/nodeapp.git'

  stage 'Build'
  docker.build('mynodeapp')

  stage 'Test'
  sh './test.sh'

  stage 'Deploy'
  sh './deploy.sh'
  
