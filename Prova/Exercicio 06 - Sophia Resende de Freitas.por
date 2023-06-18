programa{
  
  funcao inicio(){
    inteiro numero
    inteiro valor = 1
    inteiro divisor = 0

    escreva("Digite um numero e direi se ele é primo: ")
    leia(numero)

    se(numero > 0){
      enquanto(valor <= numero){
        se(numero % valor == 0){
          divisor++
        }
        valor++
      }

      se(divisor == 2){
        escreva("O número ", numero, " é primo!\n")
      }
      senao {
        escreva("O número ", numero, " não é primo!\n")
      }
    }
    enquanto (numero<=0){
      escreva("Valor inválido, tente novamente: \n")
      leia(numero)
    }
    
  }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 172; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */