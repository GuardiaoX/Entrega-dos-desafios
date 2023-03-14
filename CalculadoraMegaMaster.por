programa
{
	inclua biblioteca Tipos --> t
	inclua biblioteca Matematica --> m
	inclua biblioteca Util --> u

	funcao inicio()
	{
		calculadora()
}

funcao calculadora(){
	cadeia vetordigt[2]
	real vetornum[6]
	inteiro vetorverif[6]
	inteiro vetorintnum[6]
	cadeia vetorcad[6]
	
para(inteiro i=0; i<2; i++){
	se(i==0){
	escreva("Digite o primeiro número: ")
	leia(vetordigt[0])
	limpa()
	}senao{
	escreva("Digite o segundo número: ")
	leia(vetordigt[1])
	limpa()
	 }

se(t.cadeia_e_real(vetordigt[i]) == falso e t.cadeia_e_inteiro(vetordigt[i],10) == falso ){
		inteiro tentativas = 0
		enquanto(t.cadeia_e_real(vetordigt[i]) == falso e t.cadeia_e_inteiro(vetordigt[i],10) == falso){
		limpa()
		se(tentativas>2){escreva("Você está de brincadeira comigo? -_-\"")  u.aguarde(1500)}
		limpa()
		escreva("Este não é um valor válido T-T\n")
		u.aguarde(2500)
		limpa()
		se(i==0){escreva("Digite o primeiro número: ")}
		senao{escreva("Digite o segundo número: ")}
		leia(vetordigt[i])	
		tentativas++
		}
	vetornum[i]=t.cadeia_para_real(vetordigt[i])
	}
}


//Realiza as operções matemáticas
	vetornum[0] = t.cadeia_para_real(vetordigt[0])
	vetornum[1] = t.cadeia_para_real(vetordigt[1])
	vetornum[2] = vetornum[0] + vetornum[1]
	vetornum[3] = vetornum[0] - vetornum[1]
	vetornum[4] = vetornum[0] * vetornum[1]
	vetornum[5] = vetornum[0] / vetornum[1]

//Multipla os números por zero para a verificação da próxima etapa
	para(inteiro i=0;i<6;i++){
	vetorverif[i] = t.real_para_inteiro(vetornum[i]*10)
	}

//Verifica a sobra da divisao é == 0, "se" sim cadeia armazena o valor inteiro, "senão" armazena número real	
	para(inteiro i=0; i<6; i++){
		se(vetorverif[i]%10==0){
		vetorintnum[i] = t.real_para_inteiro(vetornum[i])
		vetorcad[i] = t.inteiro_para_cadeia(vetorintnum[i], 10)	
		}senao{vetorcad[i] = t.real_para_cadeia(m.arredondar(vetornum[i], 2))
		 }
	}

//Aqui todos os resultados escritos	
	limpa()
	escreva("Número 1: ", vetorcad[0],
		"\nNúmero 2: ", vetorcad[1],
		"\nSoma:  ", vetorcad[2],
		"\nSub: ", vetorcad[3],
		"\nMult: ", vetorcad[4],
		"\nDivisão: ", vetorcad[5])
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1905; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {vetordigt, 13, 8, 9}-{vetornum, 14, 6, 8}-{vetorverif, 15, 9, 10}-{vetorintnum, 16, 9, 11}-{vetorcad, 17, 8, 8}-{i, 19, 13, 1}-{i, 58, 14, 1}-{i, 63, 14, 1};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */