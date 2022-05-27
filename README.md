# GoCalculator

Esse repositório contém um microsserviço de calculadora desenvolvida em Go Lang e dois arquivos de configuração, packer e jenkins, com o packer é possível montar 
uma imagem docker fazendo build, essa automação foi realizada no Jenkins usando o arquivo Jenkinsfile. 

- Instale a JDK antes de instalar o Jenkins

ˋˋˋapt-get update && apt-get upgradeˋˋˋ

ˋˋˋapt-get install default-jreˋˋˋ

ˋˋˋapt-get install default-jdkˋˋˋ

- Instale o Jenkins

ˋˋˋwget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -ˋˋˋ

ˋˋˋsudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'ˋˋˋ

ˋˋˋsudo apt updateˋˋˋ

ˋˋˋsudo apt install jenkinsˋˋˋ

ˋˋˋsudo systemctl start jenkinsˋˋˋ

- Permita ao Jenkins ser usuário root, isso pode ser feito adicionando a linha: 
ˋˋˋ'jenkins ALL=(ALL) NOPASSWD: ALL'ˋˋˋ
 no arquivo que será aberto ao digitar 'sudo visudo' entretanto ao fazer isso se atente que autorizar o jenkins como um todo a ser usuário root pode afetar a segurança da aplicação.

- Crie um pipeline e faça a configuração do jenkins e atribua o SCM a esse repositório.

- Execute uma tarefa de build e acesse o os endereços (EX: <http://IP-DO-SERVIDOR/calc/sum/1/1>)

OBS: Liberar as portas 8080 e 8081 no firewall da cloud utilizada.
