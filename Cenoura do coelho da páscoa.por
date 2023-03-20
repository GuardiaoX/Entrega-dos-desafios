programa
{
	
	inteiro limii = 1
	inteiro limij = 15
	logico prim = verdadeiro
	
	funcao inicio() {
		se(prim == verdadeiro){
			para(inteiro n = 0; n < 2; n++){
				para(inteiro u = 0; u <=limij/2; u++) {
					escreva(" ")
					se(n==0 e u == ((limij / 2) - 2 )) {
						escreva("* ")
					}
					se(u == limij/2) {
						escreva("*\n")	
					}
				}
			}
		}
		
		prim = falso
		
		para(inteiro j = 0; j <limii; j++) {
			escreva(" ")	
		}
		
		para(inteiro i = 0; i < limij; i++) {
			escreva("*")
		}

		limii = limii + 1
		limij = limij - 2
		escreva("\n")
		
		se (limij > 0) {
			inicio()
		}
	}
		
}
	

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 284; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */