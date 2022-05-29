# GoCalculator

Esse repositório contém um microsserviço de calculadora desenvolvida em Go Lang e dois arquivos de configuração, packer e jenkins, com o packer é possível montar 
uma imagem docker fazendo build, essa automação foi realizada no Jenkins usando o arquivo Jenkinsfile. 

- Instale a JDK antes de instalar o Jenkins

   sudo apt-get update && apt-get upgrade

   sudo apt-get install default-jre

   sudo apt-get install default-jdk

- Instale o Jenkins 

   sudo snap install jenkins --classic

- Permita ao Jenkins ser usuário root, isso pode ser feito adicionando a linha: 
ˋˋˋ'jenkins ALL=(ALL) NOPASSWD: ALL'ˋˋˋ
 no arquivo que será aberto no vim ao digitar 'sudo visudo' entretanto ao fazer isso se atente que autorizar o jenkins como um todo a ser usuário root pode afetar a segurança da aplicação.

- Crie um pipeline e faça a configuração do jenkins e atribua o SCM a esse repositório.

- Execute uma tarefa de build e acesse o os endereços (EX: <http://IP-DO-SERVIDOR/calc/sum/1/1>)

OBS: Liberar as portas 8080 e 8081 no firewall da cloud utilizada.

Este pipeline experimental foi testado na oracle cloud e está funcional.
