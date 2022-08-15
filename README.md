# Projeto Curso Robot Framework Básico

Este projeto foi criado com base nas aulas do curso de automação de testes com robot framework da Udemy (https://www.udemy.com/course/automacao-de-testes-com-robot-framework-basico/) e aprimorado por mim com base em algumas boas práticas de criação de variáveis e organização do projeto.

## 🚀 Projeto

Essas instruções permitirão que você obtenha uma cópia do projeto em operação na sua máquina local para fins de teste.

### 📋 Pré-requisitos

Possuir o Python instalado em sua máquina e um editor de texto (de preferência VSCode)

### 🔧 Instalação

Para instalar o robot deve executar o comando abaixo em seu cmd:

```
pip install robotframework
```

Após a instalação do robot deve-se instalar as libraries utilizadas pelo projeto:

```
pip install --upgrade robotframework-seleniumlibrary
pip install robotframework-browser
pip install robotframework-requests
```

Para mais informações sobre cada library pode consultar o site da robot (https://robotframework.org/#resources)

## ⚙️ Executando os testes

Após baixar as libraries necessárias e clonar o projeto em sua máquina, abra o VSCode e instale a extensão Robot Code (digite na barra de pesquisa `d-biehl.robotcode`).

Para executar os testes há duas maneiras:

1 - Com a própria extensão:

- Passo 1: Abra a suite de teste que deseja executar (dentro da pasta /tests) e os arquivos de resources (tanto os de cada teste como também os arquivos: hooks, library e variables)
  
- Passo 2: Com todos os arquivos abertos, vá no arquivo de teste e clique no play que estará ou em frente as Settings (para executar todos os testes da suíte) ou na frente do cenário (para executar um cenário só)

 
2 - Com o arquivo batch (implementado apenas nos cenários de WEB):

- Passo 1: Utilizando o terminal do VSCode vá até a pasta /web/execution
  
- Passo 2: Dentro da pasta selecione o arquivo "Testes_Web.bat" e aperte enter
  
- Passo 3: A execução irá pedir a tag a ser executada (as tags se encontram no parametro Force Tags dentro de cada arquivo presente na pasta /tests)
  
- Passo 4: Preencha a tag e aperte enter
  
---
Escrito por Rafaela Batista 😊# Projeto Curso Robot Framework Básico

Fique a vontade para sugerir qualquer ajuste ou melhoria
