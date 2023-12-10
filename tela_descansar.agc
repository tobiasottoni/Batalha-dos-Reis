// File: tela_descansar.agc
// Created: 23-02-16




function IniciaTelaDescansar()
	
	PlaySound(26,VolumeMusicasAtual,TRUE)
	PlaySound(6,100,FALSE)
		
	
	SetSpriteVisible(BgDescansar, TRUE)
	
	SetSpritePosition(esposa,  1250, 400)	
	SetSpriteVisible(esposa, TRUE)
	
	SetVirtualButtonVisible(btnDescansar1, TRUE) 
	SetVirtualButtonActive(btnDescansar1, TRUE)	
		
	
	SetVirtualButtonVisible(btnDescansarSair, TRUE) 
	SetVirtualButtonActive(btnDescansarSair, TRUE)
	
	
	
	
endfunction



function FechaTelaDescansar()
	
	StopSound(26)
	StopSound(6)
	
	SetSpriteVisible(BgDescansar, FALSE)
	
	SetVirtualButtonVisible(btnDescansar1, FALSE) 
	SetVirtualButtonActive(btnDescansar1, FALSE)	
	
	SetVirtualButtonVisible(btnDescansarSair, FALSE) 
	SetVirtualButtonActive(btnDescansarSair, FALSE)
	
	SetSpriteVisible(esposa, FALSE)
	
	
endfunction