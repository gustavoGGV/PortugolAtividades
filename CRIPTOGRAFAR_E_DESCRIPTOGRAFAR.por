programa
{
	inclua biblioteca Texto --> t
	inclua biblioteca Tipos --> tip
	inclua biblioteca Util --> u
	const cadeia alfabeto[26]={"A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"}
	const cadeia alfabeto_minusculo[26]={"a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"}
	cadeia opcao=" "
	cadeia texto=" "
	inteiro chave=0
	cadeia opcao_chave=" "
	
	funcao inicio()
	{
		escreva("O que você quer fazer?\n1. Criptografar\n2. Descriptografar\n\n(1/2)?: ")
		leia(opcao)
		se(opcao=="1"){
			limpa()
			escreva("Escreva a frase: ")
			leia(texto)
			escreva("\nVocê quer qual chave?: ")
			leia(chave)
			limpa()
			criptografar(texto, chave)
			 	
		} senao se(opcao=="2"){
			limpa()
			escreva("Escreva a frase: ")
			leia(texto)
			escreva("\nSabe qual é a chave (S/N)?: ")
			leia(opcao_chave)
			se(opcao_chave=="S" ou opcao_chave=="s"){
				escreva("\nEntão, qual é?: ")
				leia(chave)
				limpa()
				descriptografar(texto, chave)
			} senao se(opcao_chave=="N" ou opcao_chave=="n"){
				limpa()
				escreva("Então, aqui vão todas as possibilidades (em coluna) \n\n")
				u.aguarde(1000)
				escreva("Chaves:\n")
				escreva("0 0 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1 1 1 2 2 2 2 2 2\n")
				escreva("0 1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 8 9 0 1 2 3 4 5\n\n")

				descriptografarTodasAsChaves(texto, chave)
				
			}
		} senao{
			limpa()
			escreva("Opção Inválida! Reinicie o programa.\n")
		}
	}
	
	funcao criptografar(cadeia texto, inteiro chave)
	{
		inteiro posicao
		caracter letra_caracter
		cadeia letra="Y"
		inteiro numero_letras_frases=t.numero_caracteres(texto)
		logico esta_no_alfabeto

		
		para (inteiro h=0;h<numero_letras_frases;h++){
			esta_no_alfabeto=falso

			letra_caracter=t.obter_caracter(texto, h)
			letra=tip.caracter_para_cadeia(letra_caracter)

			
			para(inteiro i=0;i<26;i++){
				
				se(letra==alfabeto[i]){
					posicao=i+chave
					posicao=posicao%26
					escreva(alfabeto[posicao])
					esta_no_alfabeto=verdadeiro
					pare
				} senao se(letra==alfabeto_minusculo[i]){
					posicao=i+chave
					posicao=posicao%26
					escreva(alfabeto_minusculo[posicao])
					esta_no_alfabeto=verdadeiro
				}
			}
			
			se(esta_no_alfabeto==falso){
				escreva(letra)
			}
			
			
		}
	}
	funcao descriptografar(cadeia texto, inteiro chave)
		{
		inteiro posicao
		caracter letra_caracter
		cadeia letra="Y"
		inteiro numero_letras_frases=t.numero_caracteres(texto)
		logico esta_no_alfabeto

		
		para (inteiro h=0;h<numero_letras_frases;h++){
			esta_no_alfabeto=falso

			letra_caracter=t.obter_caracter(texto, h)
			letra=tip.caracter_para_cadeia(letra_caracter)

			
			para(inteiro i=0;i<26;i++){
				
				se(letra==alfabeto[i]){
					posicao=i-chave

					se(posicao<0){
						posicao=posicao+26
					}
					escreva(alfabeto[posicao])
					esta_no_alfabeto=verdadeiro
					pare
				} senao se(letra==alfabeto_minusculo[i]){
					posicao=i-chave

					se(posicao<0){
						posicao=posicao+26
					}
					escreva(alfabeto_minusculo[posicao])
					esta_no_alfabeto=verdadeiro
					pare
				}
				
			}
			se(esta_no_alfabeto==falso){
				escreva(letra)
			}
			
			
		}
	}
	funcao descriptografarTodasAsChaves(cadeia texto, inteiro chave)
	{
		inteiro posicao
		caracter letra_caracter
		cadeia letra="Y"
		inteiro numero_letras_frases=t.numero_caracteres(texto)
		logico esta_no_alfabeto

		para (inteiro h=0;h<numero_letras_frases;h++){
			esta_no_alfabeto=falso

			letra_caracter=t.obter_caracter(texto, h)
			letra=tip.caracter_para_cadeia(letra_caracter)

		para(inteiro x=0;x<26;x++){
			para(inteiro i=0;i<26;i++){
				
				se(letra==alfabeto[i]){
					posicao=i-x

					se(posicao<0){
						posicao=posicao+26
					}
					escreva(alfabeto[posicao], " ")
					esta_no_alfabeto=verdadeiro
					
				} senao se(letra==alfabeto_minusculo[i]){
					posicao=i-x

					se(posicao<0){
						posicao=posicao+26
					}
					escreva(alfabeto_minusculo[posicao], " ")
					esta_no_alfabeto=verdadeiro
					
				}
				
			}
			se(esta_no_alfabeto==falso){
				escreva(letra)
			}
			
		}
			escreva("\n")
		}
	}
}
