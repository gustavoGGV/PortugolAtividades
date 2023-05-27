programa
{
	funcao inicio()
	{
		real m2
		real litro
		real latas
		inteiro dinheiro

		escreva("Insira o tamanho da área a ser pintada (em m²): ")
		leia(m2)
		litro = m2/3
		latas = litro/18
		inteiro latas_inteiro = latas+1
		dinheiro = latas_inteiro*480
		
		escreva("Você precisará de ", latas_inteiro, " lata(s) e precisará pagar ", dinheiro, "R$.")
	}
}
