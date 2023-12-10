// File: adversario_tiros.agc
// Created: 23-02-16

type oTiroAdversario
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

Global TiroAdversario as oTiroAdversario[4,0]

Global FlechaAdversario as integer

Global FlechaAdversarioAtual as integer

Global TempoTiroAdversario as integer

Global TempoFlechaAdversario as integer

Global TempoDuracaoFlechaAdversario as integer


function DefineFlechaAdversario()
	
	TipoFlechaAdversario = Random(1,7)	
	
	FlechaAdversario = 31	
	
	CreateSprite ( FlechaAdversario, 0 )
	SetSpriteSize( FlechaAdversario,130,20)
	
	if TipoFlechaAdversario = 1
	
	AddSpriteAnimationFrame ( FlechaAdversario, LoadImage ( "flechas/01/1.png" ))
	
	endif
	
	if TipoFlechaAdversario = 2
	
	AddSpriteAnimationFrame ( FlechaAdversario, LoadImage ( "flechas/02/1.png" ))
	
	endif
	
	if TipoFlechaAdversario = 3
	
	AddSpriteAnimationFrame ( FlechaAdversario, LoadImage ( "flechas/03/1.png" ))
	
	endif
	
	if TipoFlechaAdversario = 4
	
	AddSpriteAnimationFrame ( FlechaAdversario, LoadImage ( "flechas/04/1.png" ))
	
	endif
	
	if TipoFlechaAdversario = 5
	
	AddSpriteAnimationFrame ( FlechaAdversario, LoadImage ( "flechas/05/1.png" ))
	
	endif
	
	if TipoFlechaAdversario = 6
	
	AddSpriteAnimationFrame ( FlechaAdversario, LoadImage ( "flechas/06/1.png" ))
	
	endif
	
	if TipoFlechaAdversario = 7
	
	AddSpriteAnimationFrame ( FlechaAdversario, LoadImage ( "flechas/07/1.png" ))
	
	endif
		
	PlaySprite ( FlechaAdversario, 10, 1, 1, 10 )
	
	SetSpriteFlip(FlechaAdversario, 1,0)    
     			
	SetSpriteVisible(FlechaAdversario, FALSE)	
						
	
endfunction


function IniciaTirosAdversario()
	
	for x = 0 to 4
		
	TiroAdversario[x,0].velocidade =  VelocidadeFlechaCalculadaAdversario
	TiroAdversario[x,0].spr = FlechaAdversario
	TiroAdversario[x,0].x = -1600
	TiroAdversario[x,0].y = - 200
	SetSpriteVisible(TiroAdversario[x,0].spr, FALSE)
	TiroAdversario[x,0].spr = CloneSprite(FlechaAdversario)
	next x	
	
	
endfunction



function AdversarioAtira()
	
	TempoTiroAdversario = Tempo + 1.5	
	
	TempoFlechaAdversario = Tempo + 0.30	
	
	for x = 0 to 4
		
	if Adversario[x,0].vivo = TRUE
		
	AjustaAlvoAdversario(x)
	
	TiroAdversario[x,0].posicaoflecha = 0
	
	ajuste = 0
		
	SetSpriteAngle(TiroAdversario[x,0].spr,ajuste)	
		
	SetSpriteVisible(Adversario[x,0].spr,FALSE)
	SetSpriteVisible(Adversario[x,0].spr2,TRUE)
	
	//position bullet just above the players turret
	TiroAdversario[x,0].x = Adversario[x,0].x - 30 //+GetSpriteWidth(Player[0,0].spr)*0.5
	TiroAdversario[x,0].y = Adversario[x,0].y + 130 //-(GetSpriteHeight(Player[0,0].spr))
	SetSpritePosition(TiroAdversario[x,0].spr, TiroAdversario[x,0].x, TiroAdversario[x,0].y)
	SetSpriteVisible(TiroAdversario[x,0].spr, FALSE)	
	
	PlaySound(2,15,false)
	
	TiroAdversario[x,0].ativo = FALSE
	
		
	endif
				
	next x
	
		
	
			
endfunction


function RetornaSpriteOriginalAdversario()
	
	if (TempoTiro = Tempo)	
	
	for x = 0 to 4
		
	if Adversario[x,0].vivo = TRUE
	
	SetSpriteVisible(Adversario[x,0].spr2,FALSE)
	SetSpriteVisible(Adversario[x,0].spr,TRUE)
		
	endif
		
	next x
	
	endif
	
endfunction


function AtualizaFlechasAdversario()
	
	for x = 0 to 4
		
	if TiroAdversario[x,0].ativo = FALSE 		
							
				
			if TiroAdversario[x,0].y > TiroAdversario[x,0].alvoy
			
			TiroAdversario[x,0].y = TiroAdversario[x,0].y - (TiroAdversario[x,0].velocidade / 5)
			
			AjustaPosicaoFlechaAdversario(x,1)
			
			endif
			
			
			if TiroAdversario[x,0].y < TiroAdversario[x,0].alvoy 
			
			TiroAdversario[x,0].y = TiroAdversario[x,0].y + (TiroAdversario[x,0].velocidade / 5)	
			
			AjustaPosicaoFlechaAdversario(x,2)
			
			endif
																	
			
			TiroAdversario[x,0].x = TiroAdversario[x,0].x - (TiroAdversario[x,0].velocidade * 0.6)
							
		
	
	endif
	
	SetSpritePosition(TiroAdversario[x,0].spr, TiroAdversario[x,0].x, TiroAdversario[x,0].y)			
			
	
	if (TempoFlechaAdversario = Tempo)
	
	SetSpriteVisible(TiroAdversario[x,0].spr, TRUE)
		
	endif
					
	next x
	
		
		
	
endfunction


function AjustaPosicaoFlechaAdversario(x,pos)
	
	if pos = 1
		
		TiroAdversario[x,0].posicaoflecha = TiroAdversario[x,0].posicaoflecha + 0.2
		
		ajuste = TiroAdversario[x,0].posicaoflecha
		
		SetSpriteAngle(TiroAdversario[x,0].spr,ajuste)	
				
		
	endif
	
	if pos = 2
		
		TiroAdversario[x,0].posicaoflecha = TiroAdversario[x,0].posicaoflecha - 0.2
		
		ajuste = TiroAdversario[x,0].posicaoflecha
		
		SetSpriteAngle(TiroAdversario[x,0].spr,ajuste)				
		
	endif
	
endfunction


function AjustaAlvoAdversario(x)
	
	
	if GuerraEmCurso = TRUE
			
	if(Player[0,0].vivo = FALSE AND Player[1,0].vivo = FALSE AND Player[2,0].vivo = FALSE AND Player[3,0].vivo = FALSE AND Player[4,0].vivo = FALSE) then exitfunction
	
	meuadversario = FALSE
				
	while meuadversario = FALSE
	
	y = Random(0,4)
	
	meuadversario = Player[y,0].vivo
	
	TiroAdversario[x,0].alvoy = Player[y,0].y
	TiroAdversario[x,0].alvox = Player[y,0].x
		
	endwhile
	
	endif
	
		
endfunction



function ChecaStatusFlechasAdversario()
	
	SetSpriteVisible(Sangue, FALSE)
	
	for x = 0 to 4
		
	if Adversario[x,0].vivo = TRUE	
		
	if TiroAdversario[x,0].x < 0 //A Bala Atingiu o fim
		MataFlechaAdversario(x)		
	endif
	
	else		
		SetSpriteVisible(TiroAdversario[x,0].spr, FALSE)
	
	endif
	
	next x
				
	
endfunction


function MataFlechaAdversario(x)
	
	SetSpriteVisible(TiroAdversario[x,0].spr, FALSE)
	TiroAdversario[x,0].ativo = TRUE
	
endfunction


function MataPlayer()
	
		
	for x = 0 to 4
	
	for y = 0 to 4
		
		if Player[y,0].vivo = TRUE
		
		if GetSpriteCollision(TiroAdversario[x,0].spr, Player[y,0].spr)
			
			
			//Dano = 1.4 //Random(0.5,1.5)
			
			Player[y,0].vida = Player[y,0].vida - DanoExercitoCalculadoAdversario
			
			SetSpritePosition(Sangue, Player[y,0].x, Player[y,0].y)
			SetSpriteVisible(Sangue, TRUE)
			
			// Print(Adversario[y,0].vida)
			
			if Player[y,0].vida <= 0
				
				Player[y,0].vivo = 0			
				
				PlaySound(3,200,false)
				
				SetSpriteVisible(Player[y,0].spr, FALSE) 
			    SetSpriteVisible(Player[y,0].spr2, FALSE) 
			    
			    Player[y,0].vivo = FALSE	
			    
			    TotalArqueirosSalvo = TotalArqueirosSalvo - 1
			    
			    AtualizaTotalArqueirosJogador(TotalArqueirosSalvo)
			    
			    ChecaVitoria()	
			    
			    	 
			   					
			endif
			
			 MataFlechaAdversario(x)	
			
			
				
			endif	
			 
						
		endif
		
		
	next y	
	
	next x	
	
	
	
	
endfunction