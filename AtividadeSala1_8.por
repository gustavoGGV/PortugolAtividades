programa
{
	inclua biblioteca Util --> u
	funcao inicio()
	{
		inteiro n=0
		cadeia chega="nada"
		enquanto(chega!="chega"){
			escreva("\n", u.sorteia(0, 999999999))
			escreva("\n", u.sorteia(0, 999999999))
			escreva("\n", u.sorteia(0, 999999999))
			escreva("\n", u.sorteia(0, 999999999))
			escreva("\n", u.sorteia(0, 999999999))
			n+=5
			escreva("\nChega?")
			leia(chega)
		}
		escreva("\nChega! Números impressos: ", n)
	}
}
