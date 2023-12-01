pipeline {
    agent any
    
    environment {
    DOCKERHUB_CREDENTIALS = credentials('dockerhub')
    }        
    stages {
        stage('Checkout SCM'){
            steps{
                script{
                    checkout scmGit(branches: [[name: '*/feature/SCRUM-45-Make-it-Local-Like-we-developed-it']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/Chukkavijay/onlinecode.git']])
                }
            }
        }
        stage('Docker Login') {
            steps {
                sh 'echo $DOCKERHUB_CREDENTIALS | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
            }
        }
        
        stage('Adservice Docker Build-Tag-Scan-Push') {
            steps {
                script {
                    dir('src/adservice') {
                        
                        sh 'docker build -t chukkavijay/online-boutique:adservice-${BUILD_NUMBER}.0 .'
                    }    
                        
                       // Below line is to fail the stage if vulnerabilities found are HIGH and CRITICAL
                       // sh 'trivy image chukkavijay/online-boutique:adservice-${BUILD_NUMBER}.0 --exit-code 1 --severity HIGH,CRITICAL --timeout 15m'
                       
                       sh """
                       trivy image --format template --template "@/usr/bin/html.tpl" -o adservice-report.html chukkavijay/online-boutique:adservice-${BUILD_NUMBER}.0 --timeout 15m
                       """
                        
                       sh 'docker push chukkavijay/online-boutique:adservice-${BUILD_NUMBER}.0'
                }
            
                publishHTML(target: [
                    allowMissing: true,
                    alwaysLinkToLastBuild: true,
                    keepAll: true,
                    reportDir: ".",
                    reportFiles: "adservice-report.html",
                    reportName: "Trivy Adservice Report",
                ])
            }
        }

        stage('Cartservice Docker Build-Tag-Scan-Push') {
            steps {
                script {
                    dir('src/cartservice/src') {
                        
                        sh 'docker build -t chukkavijay/online-boutique:cartservice-${BUILD_NUMBER}.0 .'
                    }    
                        
                       // Below line is to fail the stage if vulnerabilities found are HIGH and CRITICAL
                       // sh 'trivy image chukkavijay/online-boutique:cartservice-${BUILD_NUMBER}.0 --exit-code 1 --severity HIGH,CRITICAL --timeout 15m'
                       
                       sh """
                       trivy image --format template --template "@/usr/bin/html.tpl" -o cartservice-report.html chukkavijay/online-boutique:cartservice-${BUILD_NUMBER}.0 --timeout 15m
                       """
                        
                       sh 'docker push chukkavijay/online-boutique:cartservice-${BUILD_NUMBER}.0'
                }
            
                publishHTML(target: [
                    allowMissing: true,
                    alwaysLinkToLastBuild: true,
                    keepAll: true,
                    reportDir: ".",
                    reportFiles: "cartservice-report.html",
                    reportName: "Trivy Cartservice Report",
                ])
            }
        }

        stage('Checkoutservice Docker Build-Tag-Scan-Push') {
            steps {
                script {
                    dir('src/checkoutservice') {
                        
                        sh 'docker build -t chukkavijay/online-boutique:checkoutservice-${BUILD_NUMBER}.0 .'
                    }    
                        
                       // Below line is to fail the stage if vulnerabilities found are HIGH and CRITICAL
                       // sh 'trivy image chukkavijay/online-boutique:checkoutservice-${BUILD_NUMBER}.0 --exit-code 1 --severity HIGH,CRITICAL --timeout 15m'
                       
                       sh """
                       trivy image --format template --template "@/usr/bin/html.tpl" -o checkoutservice-report.html chukkavijay/online-boutique:checkoutservice-${BUILD_NUMBER}.0 --timeout 15m
                       """
                        
                       sh 'docker push chukkavijay/online-boutique:checkoutservice-${BUILD_NUMBER}.0'
                }
            
                publishHTML(target: [
                    allowMissing: true,
                    alwaysLinkToLastBuild: true,
                    keepAll: true,
                    reportDir: ".",
                    reportFiles: "checkoutservice-report.html",
                    reportName: "Trivy Checkoutservice Report",
                ])
            }
        }

        stage('Currencyservice Docker Build-Tag-Scan-Push') {
            steps {
                script {
                    dir('src/currencyservice') {
                        
                        sh 'docker build -t chukkavijay/online-boutique:currencyservice-${BUILD_NUMBER}.0 .'
                    }    
                        
                       // Below line is to fail the stage if vulnerabilities found are HIGH and CRITICAL
                       // sh 'trivy image chukkavijay/online-boutique:currencyservice-${BUILD_NUMBER}.0 --exit-code 1 --severity HIGH,CRITICAL --timeout 15m'
                       
                       sh """
                       trivy image --format template --template "@/usr/bin/html.tpl" -o currencyservice-report.html chukkavijay/online-boutique:currencyservice-${BUILD_NUMBER}.0 --timeout 15m
                       """
                        
                       sh 'docker push chukkavijay/online-boutique:currencyservice-${BUILD_NUMBER}.0'
                }
            
                publishHTML(target: [
                    allowMissing: true,
                    alwaysLinkToLastBuild: true,
                    keepAll: true,
                    reportDir: ".",
                    reportFiles: "currencyservice-report.html",
                    reportName: "Trivy Currencyservice Report",
                ])
            }
        }

        stage('Emailservice Docker Build-Tag-Scan-Push') {
            steps {
                script {
                    dir('src/emailservice') {
                        
                        sh 'docker build -t chukkavijay/online-boutique:emailservice-${BUILD_NUMBER}.0 .'
                    }    
                        
                       // Below line is to fail the stage if vulnerabilities found are HIGH and CRITICAL
                       // sh 'trivy image chukkavijay/online-boutique:emailservice-${BUILD_NUMBER}.0 --exit-code 1 --severity HIGH,CRITICAL --timeout 15m'
                       
                       sh """
                       trivy image --format template --template "@/usr/bin/html.tpl" -o emailservice-report.html chukkavijay/online-boutique:emailservice-${BUILD_NUMBER}.0 --timeout 15m
                       """
                        
                       sh 'docker push chukkavijay/online-boutique:emailservice-${BUILD_NUMBER}.0'
                }
            
                publishHTML(target: [
                    allowMissing: true,
                    alwaysLinkToLastBuild: true,
                    keepAll: true,
                    reportDir: ".",
                    reportFiles: "emailservice-report.html",
                    reportName: "Trivy Emailservice Report",
                ])
            }
        }

        stage('Frontend Docker Build-Tag-Scan-Push') {
            steps {
                script {
                    dir('src/frontend') {
                        
                        sh 'docker build -t chukkavijay/online-boutique:frontend-${BUILD_NUMBER}.0 .'
                    }    
                        
                       // Below line is to fail the stage if vulnerabilities found are HIGH and CRITICAL
                       // sh 'trivy image chukkavijay/online-boutique:frontend-${BUILD_NUMBER}.0 --exit-code 1 --severity HIGH,CRITICAL --timeout 15m'
                       
                       sh """
                       trivy image --format template --template "@/usr/bin/html.tpl" -o frontend-report.html chukkavijay/online-boutique:frontend-${BUILD_NUMBER}.0 --timeout 15m
                       """
                        
                       sh 'docker push chukkavijay/online-boutique:frontend-${BUILD_NUMBER}.0'
                }
            
                publishHTML(target: [
                    allowMissing: true,
                    alwaysLinkToLastBuild: true,
                    keepAll: true,
                    reportDir: ".",
                    reportFiles: "frontend-report.html",
                    reportName: "Trivy Frontend Report",
                ])
            }
        }

        stage('Loadgenerator Docker Build-Tag-Scan-Push') {
            steps {
                script {
                    dir('src/loadgenerator') {
                        
                        sh 'docker build -t chukkavijay/online-boutique:loadgenerator-${BUILD_NUMBER}.0 .'
                    }    
                        
                       // Below line is to fail the stage if vulnerabilities found are HIGH and CRITICAL
                       // sh 'trivy image chukkavijay/online-boutique:loadgenerator-${BUILD_NUMBER}.0 --exit-code 1 --severity HIGH,CRITICAL --timeout 15m'
                       
                       sh """
                       trivy image --format template --template "@/usr/bin/html.tpl" -o loadgenerator-report.html chukkavijay/online-boutique:loadgenerator-${BUILD_NUMBER}.0 --timeout 15m
                       """
                        
                       sh 'docker push chukkavijay/online-boutique:loadgenerator-${BUILD_NUMBER}.0'
                }
            
                publishHTML(target: [
                    allowMissing: true,
                    alwaysLinkToLastBuild: true,
                    keepAll: true,
                    reportDir: ".",
                    reportFiles: "loadgenerator-report.html",
                    reportName: "Trivy Loadgenerator Report",
                ])
            }
        }

        stage('Paymentservice Docker Build-Tag-Scan-Push') {
            steps {
                script {
                    dir('src/paymentservice') {
                        
                        sh 'docker build -t chukkavijay/online-boutique:paymentservice-${BUILD_NUMBER}.0 .'
                    }    
                        
                       // Below line is to fail the stage if vulnerabilities found are HIGH and CRITICAL
                       // sh 'trivy image chukkavijay/online-boutique:paymentservice-${BUILD_NUMBER}.0 --exit-code 1 --severity HIGH,CRITICAL --timeout 15m'
                       
                       sh """
                       trivy image --format template --template "@/usr/bin/html.tpl" -o paymentservice-report.html chukkavijay/online-boutique:paymentservice-${BUILD_NUMBER}.0 --timeout 15m
                       """
                        
                       sh 'docker push chukkavijay/online-boutique:paymentservice-${BUILD_NUMBER}.0'
                }
            
                publishHTML(target: [
                    allowMissing: true,
                    alwaysLinkToLastBuild: true,
                    keepAll: true,
                    reportDir: ".",
                    reportFiles: "paymentservice-report.html",
                    reportName: "Trivy Paymentservice Report",
                ])
            }
        }

        stage('Productcatalogservice Docker Build-Tag-Scan-Push') {
            steps {
                script {
                    dir('src/productcatalogservice') {
                        
                        sh 'docker build -t chukkavijay/online-boutique:productcatalogservice-${BUILD_NUMBER}.0 .'
                    }    
                        
                       // Below line is to fail the stage if vulnerabilities found are HIGH and CRITICAL
                       // sh 'trivy image chukkavijay/online-boutique:productcatalogservice-${BUILD_NUMBER}.0 --exit-code 1 --severity HIGH,CRITICAL --timeout 15m'
                       
                       sh """
                       trivy image --format template --template "@/usr/bin/html.tpl" -o productcatalogservice-report.html chukkavijay/online-boutique:productcatalogservice-${BUILD_NUMBER}.0 --timeout 15m
                       """
                        
                       sh 'docker push chukkavijay/online-boutique:productcatalogservice-${BUILD_NUMBER}.0'
                }
            
                publishHTML(target: [
                    allowMissing: true,
                    alwaysLinkToLastBuild: true,
                    keepAll: true,
                    reportDir: ".",
                    reportFiles: "productcatalogservice-report.html",
                    reportName: "Trivy Productcatalogservice Report",
                ])
            }
        }

        stage('Recommendationservice Docker Build-Tag-Scan-Push') {
            steps {
                script {
                    dir('src/recommendationservice') {
                        
                        sh 'docker build -t chukkavijay/online-boutique:recommendationservice-${BUILD_NUMBER}.0 .'
                    }    
                        
                       // Below line is to fail the stage if vulnerabilities found are HIGH and CRITICAL
                       // sh 'trivy image chukkavijay/online-boutique:recommendationservice-${BUILD_NUMBER}.0 --exit-code 1 --severity HIGH,CRITICAL --timeout 15m'
                       
                       sh """
                       trivy image --format template --template "@/usr/bin/html.tpl" -o recommendationservice-report.html chukkavijay/online-boutique:recommendationservice-${BUILD_NUMBER}.0 --timeout 15m
                       """
                        
                       sh 'docker push chukkavijay/online-boutique:recommendationservice-${BUILD_NUMBER}.0'
                }
            
                publishHTML(target: [
                    allowMissing: true,
                    alwaysLinkToLastBuild: true,
                    keepAll: true,
                    reportDir: ".",
                    reportFiles: "recommendationservice-report.html",
                    reportName: "Trivy Recommendationservice Report",
                ])
            }
        }

        stage('Shippingservice Docker Build-Tag-Scan-Push') {
            steps {
                script {
                    dir('src/shippingservice') {
                        
                        sh 'docker build -t chukkavijay/online-boutique:shippingservice-${BUILD_NUMBER}.0 .'
                    }    
                        
                       // Below line is to fail the stage if vulnerabilities found are HIGH and CRITICAL
                       // sh 'trivy image chukkavijay/online-boutique:shippingservice-${BUILD_NUMBER}.0 --exit-code 1 --severity HIGH,CRITICAL --timeout 15m'
                       
                       sh """
                       trivy image --format template --template "@/usr/bin/html.tpl" -o shippingservice-report.html chukkavijay/online-boutique:shippingservice-${BUILD_NUMBER}.0 --timeout 15m
                       """
                        
                       sh 'docker push chukkavijay/online-boutique:shippingservice-${BUILD_NUMBER}.0'
                }
            
                publishHTML(target: [
                    allowMissing: true,
                    alwaysLinkToLastBuild: true,
                    keepAll: true,
                    reportDir: ".",
                    reportFiles: "shippingservice-report.html",
                    reportName: "Trivy Shippingservice Report",
                ])
            }
        }
        
        stage('Docker Images Cleanup') {
            steps {
                sh 'docker rmi $(docker images -a -q)'
            }
        }
        
        stage('Docker Logout') {
            steps {
                sh 'docker logout'
            }
        }
    }
}