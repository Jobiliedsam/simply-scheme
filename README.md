## Sobre

Foco na execução dos exercícios, exemplos e projetos do livro Simply Scheme Introducing Computer Science.

## Inicio

- mit-scheme
- rlwrap

Criar/Editar o arquivo de inicialização do mit-scheme *.scheme.init* no diretório home, com o código abaixo para que ele possa carregar os programas ao longo do livro.

```
;;; .scheme.init file configurate to simply scheme book
;;; loading crucial files for examples, exercises and projects 

(load "~/{path}/simply.scm")
(load "~/{path}/functions.scm") 
(load "~/{path}/ttt.scm")
(load "~/{path}/match.scm")
(load "~/{path}/spread.scm")
(load "~/{path}/database.scm")
```

Os arquviso dos programas estão contidos na pasta *book_files*.