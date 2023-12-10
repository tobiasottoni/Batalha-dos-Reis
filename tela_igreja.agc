// File: tela_igreja.agc
// Created: 23-02-16





function IniciaTelaIgreja()
	
	PlaySound(23,VolumeMusicasAtual,TRUE)
	PlaySound(7,100,FALSE)
		
	
	SetSpriteVisible(BgIgreja, TRUE)
	
	SetSpritePosition(pastor,  1250, 200)	
	SetSpriteVisible(pastor, TRUE)
	
	SetVirtualButtonVisible(btnIgreja1, TRUE) 
	SetVirtualButtonActive(btnIgreja1, TRUE)	
		
	
	SetVirtualButtonVisible(btnIgrejaSair, TRUE) 
	SetVirtualButtonActive(btnIgrejaSair, TRUE)
	
	
	
	
endfunction



function FechaTelaIgreja()
	
	StopSound(23)
	StopSound(7)
	
	SetSpriteVisible(BgIgreja, FALSE)
	
	SetVirtualButtonVisible(btnIgreja1, FALSE) 
	SetVirtualButtonActive(btnIgreja1, FALSE)	
	
	SetVirtualButtonVisible(btnIgrejaSair, FALSE) 
	SetVirtualButtonActive(btnIgrejaSair, FALSE)
	
	SetSpriteVisible(pastor, FALSE)
	
	
endfunction