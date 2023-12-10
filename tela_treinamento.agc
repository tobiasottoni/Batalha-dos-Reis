// File: tela_treinamento.agc
// Created: 23-02-16




function IniciaTelaTreinamento()
	
	PlaySound(28,VolumeMusicasAtual,TRUE)
	PlaySound(10,100,FALSE)
		
	
	SetSpriteVisible(BgTreinamento, TRUE)
	
	SetSpritePosition(treinador,  50, 180)	
	SetSpriteVisible(treinador, TRUE)
	
	
	SetVirtualButtonVisible(btnTreinamento1, TRUE) 
	SetVirtualButtonActive(btnTreinamento1, TRUE)
	
	SetVirtualButtonVisible(btnTreinamento2, TRUE) 
	SetVirtualButtonActive(btnTreinamento2, TRUE)
	
	SetVirtualButtonVisible(btnTreinamento3, TRUE) 
	SetVirtualButtonActive(btnTreinamento3, TRUE)
	
	SetVirtualButtonVisible(btnTreinamento4, TRUE) 
	SetVirtualButtonActive(btnTreinamento4, TRUE)
	
	SetVirtualButtonVisible(btnTreinamento5, TRUE) 
	SetVirtualButtonActive(btnTreinamento5, TRUE)
	
	SetVirtualButtonVisible(btnTreinamento6, TRUE) 
	SetVirtualButtonActive(btnTreinamento6, TRUE)
	
	SetVirtualButtonVisible(btnTreinamento7, TRUE) 
	SetVirtualButtonActive(btnTreinamento7, TRUE)
	
	SetVirtualButtonVisible(btnTreinamento8, TRUE) 
	SetVirtualButtonActive(btnTreinamento8, TRUE)
	
	SetVirtualButtonVisible(btnTreinamento9, TRUE) 
	SetVirtualButtonActive(btnTreinamento9, TRUE)
	
	SetVirtualButtonVisible(btnTreinamentoSair, TRUE) 
	SetVirtualButtonActive(btnTreinamentoSair, TRUE)
	
endfunction

function FechaTelaTreinamento()
	
	StopSound(28)
	StopSound(10)
	
	SetSpriteVisible(BgTreinamento, FALSE)
	
	SetSpriteVisible(treinador, FALSE)
	
	SetVirtualButtonVisible(btnTreinamento1, FALSE) 
	SetVirtualButtonActive(btnTreinamento1, FALSE)
	
	SetVirtualButtonVisible(btnTreinamento2, FALSE) 
	SetVirtualButtonActive(btnTreinamento2, FALSE)
	
	SetVirtualButtonVisible(btnTreinamento3, FALSE) 
	SetVirtualButtonActive(btnTreinamento3, FALSE)
	
	SetVirtualButtonVisible(btnTreinamento4, FALSE) 
	SetVirtualButtonActive(btnTreinamento4, FALSE)
	
	SetVirtualButtonVisible(btnTreinamento5, FALSE) 
	SetVirtualButtonActive(btnTreinamento5, FALSE)
	
	SetVirtualButtonVisible(btnTreinamento6, FALSE) 
	SetVirtualButtonActive(btnTreinamento6, FALSE)
	
	SetVirtualButtonVisible(btnTreinamento7, FALSE) 
	SetVirtualButtonActive(btnTreinamento7, FALSE)
	
	SetVirtualButtonVisible(btnTreinamento8, FALSE) 
	SetVirtualButtonActive(btnTreinamento8, FALSE)
	
	SetVirtualButtonVisible(btnTreinamento9, FALSE) 
	SetVirtualButtonActive(btnTreinamento9, FALSE)
	
	SetVirtualButtonVisible(btnTreinamentoSair, FALSE) 
	SetVirtualButtonActive(btnTreinamentoSair, FALSE)
	
endfunction