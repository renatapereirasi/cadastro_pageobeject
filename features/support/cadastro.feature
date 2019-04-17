#language: pt
#utf-8

@cadastro
Funcionalidade: Cadastro
	Eu como usuário do site
	Quero realizar meu cadastro
	Para acessar o site de compras
@criar
	Cenario: Efetuar cadastro com sucesso
		Dado que eu esteja na pagina da loja Automation Practice
		Quando eu efetuar o cadastro com sucesso
		Entao as informações cadastradas serão exibidas
@editar
	Cenario: Editar perfil cadastrado
		Dado que eu esteja logado com usuário válido no site Automation Practice
		Quando acessar e editar as informações pessoais
		Entao verei a mensagem 'Your personal information has been successfully updated.'