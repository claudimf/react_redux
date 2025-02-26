# Curso "React + Redux: Fundamentos e 2 Apps do Absoluto ZERO!"

## Instrutor: Leonardo Moura Leitao

### Referências
- [Perfil no GitHub](https://github.com/leonardomleitao)
- [Perfil no LinkedIn](https://www.linkedin.com/school/cod3r/)  
- [Perfil na Udemy](https://www.udemy.com/user/leonardomouraleitao/)  

Neste curso o que temos a aprender:  

1. ReactJS  
2. JAVASCRIPT  
2. Configuração do Docker  

# Guia do desenvolvedor

## 🐳 Desenvolvendo utilizando Docker

### Permissões dos arquivos:
Se você criar um arquivo dentro de um container para que se tenha acesso localmente, você precisa alterar as permissões:

```sh
sudo chown -R $USER:$USER .
```
### Construindo o projeto localmente:
No pasta raíz há um arquivo chamado '01_build_local_project.sh' para construir o projeto localment, para tal execute:

```sh
bash 01_build_local_project.sh
```

### Acessar o bash:
```sh
docker compose run --rm app bash
```

### Caso não tenha o package.json:
No momento em que construir o projeto através do "docker compose build app" e você não tiver o arquivo package.json você pode simplesmente comentar a linha "COPY package.json ." do arquivo do Dockerfile e rodar o build novamente:

```sh
docker compose build app
docker compose run --rm app bash
npm init --yes
```

## Referências utilizadas
[1° Curso React + Redux: Fundamentos e 2 Apps do Absoluto ZERO! ](https://www.udemy.com/course/react-redux-pt/)  
[2° Curso de React para Completos Iniciantes [2024]](https://github.com/claudimf/react_full_stack_club)  
[3° Can I use "css-grid"](https://caniuse.com/?search=css-grid)  