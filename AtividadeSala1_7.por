programa
{
	
	funcao inicio()
	{
		cadeia s
		escreva("Crie uma senha: ")
		leia(s)
		enquanto(s == "12345" ou s == "admin" ou s == "senha" ou s == "password"){
			escreva("\n", "Digite uma senha mais segura... ")
			leia(s)
		}
		escreva("\nSenha registrada!\n")
	}
}
