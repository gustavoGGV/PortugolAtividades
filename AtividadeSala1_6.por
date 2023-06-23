programa
{
	
	funcao inicio()
	{
		inteiro n1
		inteiro n2
		leia(n1)
		leia(n2)
		se(n1>n2){
			n1--
			enquanto(n1!=n2){
				escreva(n1, " ")
				n1--
			}
		}senao{
			n2--
			enquanto(n2!=n1){
				escreva(n2, " ")
				n2--
			}
		}
	}
}
