// File: tela_armas.agc
// Created: 23-02-16





function IniciaTelaArmas()
	
	PlaySound(22,VolumeMusicasAtual,TRUE)
	PlaySound(4,100,FALSE)
		
	
	SetSpriteVisible(BgArmas, TRUE)
	
	SetSpritePosition(armeiro,  1530, 80)	
	SetSpriteVisible(armeiro, TRUE)
	
	SetVirtualButtonVisible(btnArmas1, TRUE) 
	SetVirtualButtonActive(btnArmas1, TRUE)
	
	SetVirtualButtonVisible(btnArmas2, TRUE) 
	SetVirtualButtonActive(btnArmas2, TRUE)
	
	SetVirtualButtonVisible(btnArmas3, TRUE) 
	SetVirtualButtonActive(btnArmas3, TRUE)
	
	SetVirtualButtonVisible(btnArmas4, TRUE)
	SetVirtualButtonActive(btnArmas4, TRUE)
	
	SetVirtualButtonVisible(btnArmas5, TRUE) 
	SetVirtualButtonActive(btnArmas5, TRUE)
	
	SetVirtualButtonVisible(btnArmas6, TRUE)
	SetVirtualButtonActive(btnArmas6, TRUE)
	
	SetVirtualButtonVisible(btnArmas7, TRUE) 
	SetVirtualButtonActive(btnArmas7, TRUE)
	
	SetVirtualButtonVisible(btnArmasSair, TRUE) 
	SetVirtualButtonActive(btnArmasSair, TRUE)
	
	
	
	
endfunction



function FechaTelaArmas()
	
	StopSound(22)	
	StopSound(4)
	
	SetSpriteVisible(BgArmas, FALSE)
	
	SetVirtualButtonVisible(btnArmas1, FALSE) 
	SetVirtualButtonActive(btnArmas1, FALSE)
	
	SetVirtualButtonVisible(btnArmas2, FALSE) 
	SetVirtualButtonActive(btnArmas2, FALSE)
	
	SetVirtualButtonVisible(btnArmas3, FALSE) 
	SetVirtualButtonActive(btnArmas3, FALSE)
	
	SetVirtualButtonVisible(btnArmas4, FALSE) 
	SetVirtualButtonActive(btnArmas4, FALSE)
	
	SetVirtualButtonVisible(btnArmas5, FALSE) 
	SetVirtualButtonActive(btnArmas5, FALSE)
	
	SetVirtualButtonVisible(btnArmas6, FALSE) 
	SetVirtualButtonActive(btnArmas6, FALSE)
	
	SetVirtualButtonVisible(btnArmas7, FALSE) 
	SetVirtualButtonActive(btnArmas7, FALSE)
	
	SetVirtualButtonVisible(btnArmasSair, FALSE) 
	SetVirtualButtonActive(btnArmasSair, FALSE)
	
	SetSpriteVisible(armeiro, FALSE)
	
	
endfunction