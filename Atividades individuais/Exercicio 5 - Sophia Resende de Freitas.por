programa
{
		/* 	Exercicio 05
			Sophia Resende de Freitas
		*/
	
	funcao inicio()
	{
		cadeia cores [] = {"azul    ","vermelho","amarelo ","branco  ","preto   ","verde   "}
			cadeia numeros [] = {"1       ","2       ","3       ","4       ","5       ","6       "}
			cadeia aux [6]

			escreva("Vetor cores: ")
			para(inteiro i=0; i<6; i++){
				escreva(cores[i], "\t")
				}
			escreva("\nVetor numeros: ")
			para(inteiro i=0; i<6; i++){
				escreva(numeros[i], "\t")
				}
			
			para (inteiro i=0; i<6; i++){
			aux[i] = cores[i]
			}

			escreva("\n\nVetor cores agora recebe: ")
			para(inteiro i=0; i<6; i++){
				cores[i] = numeros[i]
				escreva(cores[i], "\t")
				}
			escreva("\nVetor numeros agora recebe: ")
			para(inteiro i=0; i<6; i++){
				numeros[i] = aux[i]
				escreva(numeros[i], "\t")
				}
			
		}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 823; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */