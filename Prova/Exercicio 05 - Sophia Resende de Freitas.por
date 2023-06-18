	
		/*5- O laço do código abaixo entra em loop infinito.

		Descubra, resolva e informe o resultado da rotina:*/

programa
{	
	funcao inicio()
	{
inteiro numero
		inteiro i=0, j=0

		escreva("\nInforme um numero: ")
		leia(numero)

		para(i = 1; i<=numero; i++){
			escreva("\n")
			para(j=1;j<=i;j++){  // o código original estava: para(j=1;i<=i;j++)
				escreva(j)
			}
		}

		// o problema no código estava justamente no i<=i, pois essa condição sempre será verdadeira i 
		//sempre será igual a si mesmo para o codigo funcionar apenas troquei o i por j, e assim ele apresentará 
		// a sequencia de números até o numero apresentado pela usuario
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 636; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */