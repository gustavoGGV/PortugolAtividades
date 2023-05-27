programa
{
	inclua biblioteca Matematica --> xuxu

	funcao inicio()
	{
		real cateto1 = xuxu.potencia(11.5, 2)
		real cateto2 = xuxu.potencia(6.3, 2)
		real fio_metros = cateto1+cateto2
		fio_metros = xuxu.raiz(fio_metros, 2)

		escreva("a) No mínimo, o comprimento do fio deve ser de ", fio_metros, "m.")

		escreva("\n", "\n", "Insira a medida do lado 1 (m): ")
		leia(cateto1)
		escreva("Insira a medida do lado 2 (m): ")
		leia(cateto2)

		cateto1 = xuxu.potencia(cateto1, 2)
		cateto2 = xuxu.potencia(cateto2, 2)
		fio_metros = cateto1+cateto2
		fio_metros = xuxu.raiz(fio_metros, 2)

		escreva("\n", "b) O comprimento de fio necessário para este telhado é: ", fio_metros, "m.", "\n")
	}
}
