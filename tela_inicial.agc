// File: tela_inicial.agc
// Created: 23-02-16



global TituloGame
global TelaInicial

function TeladeInicio()
	
	
	PlaySound(21,VolumeMusicasAtual,TRUE)
	
	CriaBGTelas()	
	CriaPersonagensTelas()
	IniciaSangue()
	
	JogoEmCurso = FALSE
	
	TelaInicial = TRUE
	
	//PlaySound(21 ,VolumeDoSom,true )	
	
		
	
	SetSpriteVisible(BGMenu, TRUE)
	
	
	//SetSpriteVisible (nave1, TRUE)
	//SetSpriteVisible (nave2, TRUE)
	//SetSpriteVisible (nave3, TRUE)
	//SetSpriteVisible (nave4, TRUE)	
	//SetSpriteVisible (meteoro1, TRUE)
	//SetSpriteVisible (meteoro2, TRUE)
	
	//TituloGame = CreateSprite(LoadImage("imgshome/titulogame.png")) 
	//SetSpriteSize(TituloGame, LarguraTela*0.7, AlturaTela*0.7) 
	//SetSpritePositionByOffset(TituloGame, LarguraTela*0.6, AlturaTela*0.4)
	
	
	//ChamaAnuncioIntersticial() 
	
	//ChamaAnuncioBanner()	
		
		
	SetVirtualButtonVisible(btnJogar, TRUE) 
	SetVirtualButtonActive(btnJogar, TRUE)
	
	//SetVirtualButtonVisible(btnOpcoes, TRUE) 
	//SetVirtualButtonActive(btnOpcoes, TRUE)
	
	SetVirtualButtonVisible(btnSair, TRUE) 
	SetVirtualButtonActive(btnSair, TRUE)
		
	
		
	
endfunction


function FechaTelaInicio()
	
	StopSound(21)
	
	TelaInicial = FALSE
	
	SetSpriteVisible(BGMenu, FALSE)
	
	GetVirtualButtonState( btnJogar )	
	SetVirtualButtonVisible(btnJogar, FALSE) 
	SetVirtualButtonActive(btnJogar, FALSE)
	
	GetVirtualButtonState( btnSair )	
	SetVirtualButtonVisible(btnSair, FALSE) 
	SetVirtualButtonActive(btnSair, FALSE)
	
	//SetVirtualButtonVisible(btnOpcoes, FALSE) 
	//SetVirtualButtonActive(btnOpcoes, FALSE)
	
	//SetVirtualButtonVisible(btnSair, FALSE) 
	//SetVirtualButtonActive(btnSair, FALSE)
	
	//SetSpriteVisible (nave1, FALSE)
	//SetSpriteVisible (nave2, FALSE)
	//SetSpriteVisible (nave3, FALSE)
	//SetSpriteVisible (nave4, FALSE)	
	//SetSpriteVisible (meteoro1, FALSE)
	//SetSpriteVisible (meteoro2, FALSE)
	//SetSpriteVisible(TituloGame, FALSE)
	
endfunction