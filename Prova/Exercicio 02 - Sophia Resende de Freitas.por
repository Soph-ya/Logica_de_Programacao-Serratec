programa
{
	
	funcao inicio()
	{	
		const inteiro TAM = 2
		inteiro turma[TAM]
		cadeia nomeAluno[TAM]
		real nota1, nota2, nota3, nota4
		real media[TAM]
		real notas[4]
		cadeia aprovacao

		 
		para (inteiro i=0; i<TAM; i++) {
			escreva("escreva o nome dos Alunos: ")
			leia(nomeAluno[i])
			escreva("Digite suas 4 notas: ")
			leia(nota1)
			leia(nota2)
			leia(nota3)
			leia(nota4)
			notas[i] = nota1+nota2+nota3+nota4
			media[i] = notas[i] / 4
			
					
			}
			
			escreva("Nome:\tNota total:\t Media:\tAprovação\t\t\n")
		para (inteiro j=0; j<TAM; j++) {
						se (media[j] >=6) {
				aprovacao = "Aprovado "}
				senao{
					aprovacao = "Reprovado "}
					
					escreva(nomeAluno[j],"\t", notas[j],"\t\t",  media[j],"\t", aprovacao, "\n")
		}
			
			


	}
		
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 13; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */