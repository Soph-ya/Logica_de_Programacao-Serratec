programa
{	
/* 		Exercicio 02
		Sophia Resende de Freitas*/
	
	funcao inicio()
	{
		const inteiro TAM = 5
		cadeia nome[TAM]

		para(inteiro i=0; i<TAM ;i++) {
			escreva("informe o ", i+1, "º nome: ")
			leia(nome[i])
				
			}
			limpa()

		escreva("Nomes digitados: \n")
		para(inteiro j=0; j<TAM; j++) {
			escreva(nome[j], "\n")
			}	
	escreva("Nomes digitados em ordem inversa: \n")
		para(inteiro j=4; j>=0; j--) {
			escreva(nome[j], "\n")
			}		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 386; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */