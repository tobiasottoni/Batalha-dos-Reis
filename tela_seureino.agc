// File: tela_seureino.agc
// Created: 23-02-16





function IniciaTelaSeuReino()
	
	PlaySound(27,VolumeMusicasAtual,TRUE)
	PlaySound(9,100,FALSE)
		
	SetSpriteVisible(BgSeuReino, TRUE)
	
	SetSpritePosition(conselheiro,  1250, 200)	
	SetSpriteVisible(conselheiro, TRUE)
	
	SetVirtualButtonVisible(btnSeuReino1, TRUE) 
	SetVirtualButtonActive(btnSeuReino1, TRUE)	
		
	
	SetVirtualButtonVisible(btnSeuReinoSair, TRUE) 
	SetVirtualButtonActive(btnSeuReinoSair, TRUE)
	
	
	
	
endfunction



function FechaTelaSeuReino()
	
	StopSound(27)
	StopSound(9)
	
	SetSpriteVisible(BgSeuReino, FALSE)
	
	SetVirtualButtonVisible(btnSeuReino1, FALSE) 
	SetVirtualButtonActive(btnSeuReino1, FALSE)	
	
	SetVirtualButtonVisible(btnSeuReinoSair, FALSE) 
	SetVirtualButtonActive(btnSeuReinoSair, FALSE)
	
	SetSpriteVisible(conselheiro, FALSE)
	
	
endfunction