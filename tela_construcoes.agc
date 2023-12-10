// File: tela_construcoes.agc
// Created: 23-02-16





function IniciaTelaConstrucoes()
	
	PlaySound(25,VolumeMusicasAtual,TRUE)	
	PlaySound(5,100,FALSE)
	
	
	SetSpriteVisible(BgConstrucoes, TRUE)
	
	SetSpritePosition(construtor,  1530, 180)	
	SetSpriteVisible(construtor, TRUE)
	
	SetVirtualButtonVisible(btnConstrucoes1, TRUE) 
	SetVirtualButtonActive(btnConstrucoes1, TRUE)
	
	SetVirtualButtonVisible(btnConstrucoes2, TRUE) 
	SetVirtualButtonActive(btnConstrucoes2, TRUE)
	
	SetVirtualButtonVisible(btnConstrucoes3, TRUE) 
	SetVirtualButtonActive(btnConstrucoes3, TRUE)
	
	SetVirtualButtonVisible(btnConstrucoes4, TRUE)
	SetVirtualButtonActive(btnConstrucoes4, TRUE)
	
	
	SetVirtualButtonVisible(btnConstrucoesSair, TRUE) 
	SetVirtualButtonActive(btnConstrucoesSair, TRUE)
	
	
	
	
endfunction



function FechaTelaConstrucoes()
	
	StopSound(25)
	StopSound(5)
	
	SetSpriteVisible(BgConstrucoes, FALSE)
	
	SetVirtualButtonVisible(btnConstrucoes1, FALSE) 
	SetVirtualButtonActive(btnConstrucoes1, FALSE)
	
	SetVirtualButtonVisible(btnConstrucoes2, FALSE) 
	SetVirtualButtonActive(btnConstrucoes2, FALSE)
	
	SetVirtualButtonVisible(btnConstrucoes3, FALSE) 
	SetVirtualButtonActive(btnConstrucoes3, FALSE)
	
	SetVirtualButtonVisible(btnConstrucoes4, FALSE) 
	SetVirtualButtonActive(btnConstrucoes4, FALSE)
	
	
	SetVirtualButtonVisible(btnConstrucoesSair, FALSE) 
	SetVirtualButtonActive(btnConstrucoesSair, FALSE)
	
	SetSpriteVisible(construtor, FALSE)
	
	
endfunction