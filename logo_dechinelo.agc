// File: logo_dechinelo.agc
// Created: 23-02-16


global LogoDeChinelo as integer
global NovoTempo
global SomdechineloPlayed as integer

function MostraLogo()
	
	LogoDeChinelo = CreateSprite(LoadImage("dechinelogames.png"))
	SetSpriteDepth (LogoDeChinelo, 999)
	SetSpriteVisible(LogoDeChinelo, TRUE)
	SetSpriteSize(LogoDeChinelo, LarguraTela*0.5, AlturaTela*0.5) // Ajusto o tamanho do logo
	SetSpritePositionByOffset(LogoDeChinelo, LarguraTela*0.5, AlturaTela*0.5) // Ajusto a posição do logo
	
	NovoTempo = GetSeconds ( ) + 7
	
	/*
	
	DeleteFile ('ns.dat')
	DeleteFile ('ds.dat')
	DeleteFile ('lf.dat')
	DeleteFile ('ef.dat')
	DeleteFile ('ta.dat')
	DeleteFile ('tpa.dat')
	DeleteFile ('tf.dat')
	DeleteFile ('tfp.dat')
	DeleteFile ('fe.dat')
	DeleteFile ('fd.dat')
	DeleteFile ('en.dat')
	DeleteFile ('sj.dat')
	
	*/
		
			
endfunction

function Somdechinelo()
	
	if SomdechineloPlayed = False
	
	PlaySound(1,100,false)
	
	endif
	
	
endfunction

function DispensaLogo()	
			
	Somdechinelo()
	
	SomdechineloPlayed = TRUE
	
	if Tempo = NovoTempo
		
		NovoTempo = 0
						
		SetSpriteVisible(LogoDeChinelo, FALSE)
		
				
		if GetFileExists("ns.dat")
			
			TeladeInicio()
						
		else
		
		PedeCadastro()
		
		endif
		
		
		
		endif
	
	endfunction