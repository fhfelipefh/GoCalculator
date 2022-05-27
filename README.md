# GoCalculator

Esse repositório contém um microsserviço de calculadora desenvolvida em Go Lang e dois arquivos de configuração, packer e jenkins, com o packer é possível montar 
uma imagem docker fazendo build, essa automação foi realizada no Jenkins usando o arquivo Jenkinsfile. 

- Instale a JDK antes de instalar o Jenkins
- Instale o Jenkins
- Permita ao Jenkins ser usuário root, isso pode ser feito adicionando a linha: 'jenkins ALL=(ALL) NOPASSWD: ALL' no arquivo que será aberto ao digitar 'sudo visudo' entretanto ao fazer isso se atente que autorizar o jenkins como um todo a ser usuário root pode afetar a segurança da aplicação.
- Crie um pipeline e atribua o SCM a esse repositório.
