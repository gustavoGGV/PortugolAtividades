programa
{
	
	funcao inicio()
	{
		inteiro n1
		inteiro n2=1
		escreva("O sinhô quer tabuada de qual número inteiro (1 até 10)? ")
		leia(n1)
		enquanto(n2<=10){
			escreva(n1, " x ", n2, " = ", n1*n2, "\n")
			n2++		
		}
	}
}
