// File: player_tiros.agc
// Created: 23-02-16

type oTiroPlayer
	ativo as integer
	spr as integer
	x as float
	y as float
	alvoy as float
	alvox as float
	dano as float
	posicaoflecha as float
	velocidade as float
endtype

Global TiroPlayer as oTiroPlayer[4,0]

Global FlechaPlayer as integer

Global FlechaPlayerAtual as integer

Global TempoTiro as integer

Global TempoFlecha as integer

Global TempoDuracaoFlechaPlayer as integer

Global TiroPermitido as integer



function DefineFlechaJogador()
	
	
	FlechaPlayer = 30	
	
	CreateSprite ( FlechaPlayer, 0 )
	SetSpriteSize( FlechaPlayer,130,20)
	
	
	if TipoFlechaSalvo = 1
	
	AddSpriteAnimationFrame ( FlechaPlayer, LoadImage ( "flechas/01/1.png" ))
	
	ForcaExercitoCalculadoPlayer = ForcaExercitoCalculadoPlayer + 10
	
	endif
	
	if TipoFlechaSalvo = 2
	
	AddSpriteAnimationFrame ( FlechaPlayer, LoadImage ( "flechas/02/1.png" ))
	
	ForcaExercitoCalculadoPlayer = ForcaExercitoCalculadoPlayer + 20
	
	endif
	
	if TipoFlechaSalvo = 3
	
	AddSpriteAnimationFrame ( FlechaPlayer, LoadImage ( "flechas/03/1.png" ))
	
	ForcaExercitoCalculadoPlayer = ForcaExercitoCalculadoPlayer + 30
	
	endif
	
	if TipoFlechaSalvo = 4
	
	AddSpriteAnimationFrame ( FlechaPlayer, LoadImage ( "flechas/04/1.png" ))
	
	ForcaExercitoCalculadoPlayer = ForcaExercitoCalculadoPlayer + 40
	
	endif
	
	if TipoFlechaSalvo = 5
	
	AddSpriteAnimationFrame ( FlechaPlayer, LoadImage ( "flechas/05/1.png" ))
	
	ForcaExercitoCalculadoPlayer = ForcaExercitoCalculadoPlayer + 50
	
	endif
	
	if TipoFlechaSalvo = 6
	
	AddSpriteAnimationFrame ( FlechaPlayer, LoadImage ( "flechas/06/1.png" ))
	
	ForcaExercitoCalculadoPlayer = ForcaExercitoCalculadoPlayer + 60
	
	endif
	
	if TipoFlechaSalvo = 7
	
	AddSpriteAnimationFrame ( FlechaPlayer, LoadImage ( "flechas/07/1.png" ))
	
	ForcaExercitoCalculadoPlayer = ForcaExercitoCalculadoPlayer + 70
	
	endif
		
	PlaySprite ( FlechaPlayer, 10, 1, 1, 10 )    
     			
	SetSpriteVisible(FlechaPlayer, FALSE)	
						
	
endfunction


function IniciaTirosPlayer()
	
	for x = 0 to 4
		
	TiroPlayer[x,0].velocidade =  VelocidadeFlechaCalculadaPlayer
	TiroPlayer[x,0].spr = FlechaPlayer
	TiroPlayer[x,0].x = 3000
	TiroPlayer[x,0].y = -200
	SetSpriteVisible(TiroPlayer[x,0].spr, FALSE)
	TiroPlayer[x,0].spr = CloneSprite(FlechaPlayer)
	next x	
	
	
endfunction



function PlayerAtira()
	
	TiroPermitido = FALSE
	SetVirtualButtonActive(btnGuerra1, FALSE)
	SetVirtualButtonVisible(btnGuerra1, FALSE)
	
	TempoTiro = Tempo + 1.5	
	
	TempoFlecha = Tempo + 0.30
	
	for x = 0 to 4
		
	if Player[x,0].vivo = TRUE
		
	AjustaAlvo(x)
	
	TiroPlayer[x,0].posicaoflecha = 0
	
	ajuste = 0
		
	SetSpriteAngle(TiroPlayer[x,0].spr,ajuste)					
					
				
	SetSpriteVisible(Player[x,0].spr,FALSE)
	SetSpriteVisible(Player[x,0].spr2,TRUE)
	
	//position bullet just above the players turret
	TiroPlayer[x,0].x = Player[x,0].x - 30 //+GetSpriteWidth(Player[0,0].spr)*0.5
	TiroPlayer[x,0].y = Player[x,0].y + 130 //-(GetSpriteHeight(Player[0,0].spr))
	SetSpritePosition(TiroPlayer[x,0].spr, TiroPlayer[x,0].x, TiroPlayer[x,0].y)
	SetSpriteVisible(TiroPlayer[x,0].spr, FALSE)	
	
	PlaySound(2,15,false)
	
	TiroPlayer[x,0].ativo = FALSE	
	
	TotalFlechasSalvo = TotalFlechasSalvo - 1
	
	AtualizaTotalFlechaJogador(TotalFlechasSalvo)
	
			
	endif
				
	next x
	
		
	
			
endfunction


function RetornaSpriteOriginalPlayer()
	
	if (TempoTiro = Tempo)	
	
	for x = 0 to 4
		
	if Player[x,0].vivo = TRUE
	
	SetSpriteVisible(Player[x,0].spr2,FALSE)
	SetSpriteVisible(Player[x,0].spr,TRUE)
		
	endif
		
	next x
	
	endif
	
endfunction


function AtualizaFlechasPlayer()
	
		
		for x = 0 to 4
		
	if TiroPlayer[x,0].ativo = FALSE 		
							
				
			if TiroPlayer[x,0].y > TiroPlayer[x,0].alvoy			
			
			TiroPlayer[x,0].y = TiroPlayer[x,0].y - (TiroPlayer[x,0].velocidade / 5)
			
			AjustaPosicaoFlecha(x,1)
			
			endif
			
			
			if TiroPlayer[x,0].y < TiroPlayer[x,0].alvoy 
			
			TiroPlayer[x,0].y = TiroPlayer[x,0].y + (TiroPlayer[x,0].velocidade / 5)
			
			AjustaPosicaoFlecha(x,2)
			
			endif
																	
			
			TiroPlayer[x,0].x = TiroPlayer[x,0].x + (TiroPlayer[x,0].velocidade * 0.6)
							
		
	
	endif
	
	SetSpritePosition(TiroPlayer[x,0].spr, TiroPlayer[x,0].x, TiroPlayer[x,0].y)	
			
	
	if (TempoFlecha = Tempo)
	
	SetSpriteVisible(TiroPlayer[x,0].spr, TRUE)
		
	endif
					
	next x
	
endfunction


function AjustaPosicaoFlecha(x,pos)
	
	if pos = 1
		
		TiroPlayer[x,0].posicaoflecha = TiroPlayer[x,0].posicaoflecha - 0.30
		
		ajuste = TiroPlayer[x,0].posicaoflecha
		
		SetSpriteAngle(TiroPlayer[x,0].spr,ajuste)	
				
		
	endif
	
	if pos = 2
		
		TiroPlayer[x,0].posicaoflecha = TiroPlayer[x,0].posicaoflecha + 0.30	
		
		ajuste = TiroPlayer[x,0].posicaoflecha
		
		SetSpriteAngle(TiroPlayer[x,0].spr,ajuste)				
		
	endif
	
	
endfunction


function AjustaAlvo(x)
	
	if GuerraEmCurso = TRUE
			
	if(Adversario[0,0].vivo = FALSE AND Adversario[1,0].vivo = FALSE AND Adversario[2,0].vivo = FALSE AND Adversario[3,0].vivo = FALSE AND Adversario[4,0].vivo = FALSE) then exitfunction
	
	meuadversario = FALSE
				
	while meuadversario = FALSE
	
	y = Random(0,4)
	
	meuadversario = Adversario[y,0].vivo
	
	TiroPlayer[x,0].alvoy = Adversario[y,0].y
	TiroPlayer[x,0].alvox = Adversario[y,0].x
		
	endwhile
	
	endif
		
endfunction



function ChecaStatusFlechasPlayer()
	
	SetSpriteVisible(Sangue, FALSE)
	
	for x = 0 to 4
		
	if Player[x,0].vivo = TRUE	
		
	if TiroPlayer[x,0].x > 2400 //A Bala Atingiu o fim
		MataFlechaPlayer(x)
	endif
	
	else
		
		SetSpriteVisible(TiroPlayer[x,0].spr, FALSE)
	
	endif
	
	next x
	
	
	
	if TiroPlayer[0,0].ativo = TRUE AND TiroPlayer[1,0].ativo = TRUE AND TiroPlayer[2,0].ativo = TRUE AND TiroPlayer[3,0].ativo = TRUE AND TiroPlayer[4,0].ativo = TRUE AND TiroAdversario[0,0].ativo = TRUE AND TiroAdversario[1,0].ativo = TRUE AND TiroAdversario[2,0].ativo = TRUE AND TiroAdversario[3,0].ativo = TRUE AND TiroAdversario[4,0].ativo = TRUE
		
		TiroPermitido = TRUE
		SetVirtualButtonActive(btnGuerra1, TRUE)
		SetVirtualButtonVisible(btnGuerra1, TRUE)
		
		for f = 0 to 4
		
		TiroPlayer[f,0].x = 0
		TiroPlayer[f,0].y = 0
		
		TiroAdversario[f,0].x = 2400
		TiroAdversario[f,0].y = 0
		
		next f
		
	endif
	
	
				
	
endfunction


function MataFlechaPlayer(x)
			
	
	SetSpriteVisible(TiroPlayer[x,0].spr, FALSE)
	TiroPlayer[x,0].ativo = TRUE	
	
	
endfunction


function MataAdversario()
	
	
	for x = 0 to 4
	
	for y = 0 to 4
		
		if Adversario[y,0].vivo = TRUE
		
		if GetSpriteCollision(TiroPlayer[x,0].spr, Adversario[y,0].spr)
			
			
			//Dano = 2 //Random(0.5,1.5)
			
			Adversario[y,0].vida = Adversario[y,0].vida - DanoExercitoCalculadoPlayer
			
			SetSpritePosition(Sangue, Adversario[y,0].x, Adversario[y,0].y)
			SetSpriteVisible(Sangue, TRUE)
			
			// Print(Adversario[y,0].vida)
			
			if Adversario[y,0].vida <= 0
				
				Adversario[y,0].vivo = 0			
				
				PlaySound(3,200,false)
				
				SetSpriteVisible(Adversario[y,0].spr, FALSE) 
			    SetSpriteVisible(Adversario[y,0].spr2, FALSE) 
			    
			    Adversario[y,0].vivo = FALSE	
			    
			    
			   ChecaVitoria()			    
			    	    
			   			
			   					
			endif
			
			
			MataFlechaPlayer(x)
				
			endif	
			 
						
		endif
		
		
	next y	
	
	next x	
	
		
	
endfunction