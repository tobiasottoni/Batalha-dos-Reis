// File: jogo_verifica_vitoria.agc
// Created: 23-02-16


Global PlayersVivos as integer
Global AdversariosVivos as integer


function ChecaVitoria()
	
	PlayersVivos = 0
	
	AdversariosVivos = 0
		
	for x = 0 to 4
		
		if Player[x,0].vivo = TRUE
			
			PlayersVivos = PlayersVivos +1
				
		endif	
		
	next x
	
	
	for y = 0 to 4
		
		if Adversario[y,0].vivo = TRUE
			
			AdversariosVivos = AdversariosVivos + 1
		
		endif
		
	next y
	
	
	if AdversariosVivos <= 0 AND PlayersVivos >= 1
		
	// Player ganhou
	
	VibrateDevice(1)
	
	VitoriaPlayer()
	
	DinheiroSalvo = DinheiroSalvo + 250
	AtualizaDinheiroJogador(DinheiroSalvo)
	
	FavorDivinoSalvo = FavorDivinoSalvo + 50
	
	AtualizaFavorDivinoJogador(FavorDivinoSalvo)
	
	
	GuerraEmCurso = FALSE
	
	endif
	
	
	if AdversariosVivos >=  1 AND PlayersVivos <= 0
		
	//Adversário Ganhou
	
	VibrateDevice(1)
	
	VitoriaAdversario()
	
	DinheiroSalvo = DinheiroSalvo - 100
	AtualizaDinheiroJogador(DinheiroSalvo)
	
	EstadoFortePlayer = EstadoFortePlayer + 1
	
	if EstadoFortePlayer > 4
		
		EstadoFortePlayer = 4
		
		endif
	
	AtualizaEstadoForteJogador(EstadoFortePlayer)
	
	GuerraEmCurso = FALSE
	
	endif
	
	
	
	if AdversariosVivos =  0 AND PlayersVivos = 0
		
	//Empate
	
	VibrateDevice(1)
	
	Empate()
	
	DinheiroSalvo = DinheiroSalvo - 50
	AtualizaDinheiroJogador(DinheiroSalvo)
	
	EstadoFortePlayer = EstadoFortePlayer - 1
	
	if EstadoFortePlayer > 4
		
		EstadoFortePlayer = 4
		
		endif
	
	AtualizaEstadoForteJogador(EstadoFortePlayer)
	
	GuerraEmCurso = FALSE
	
	endif
		
		
	
endfunction


function VitoriaPlayer()
	
	GuerraEmCurso = FALSE
	
	SetSpriteVisible(Sangue, FALSE)
	
	StopSound(MusicaAtual)
	
	//DeleteSprite(bgcampodeguerra)
	
	Novatela = LoadImage("campodeguerra/voceganhou.png")
	
	SetSpriteImage(bgcampodeguerra, Novatela)
		
			
	SetSpriteVisible(ForteAdversario, FALSE)
	SetSpriteVisible(FortePlayer, FALSE)
	
	//SetVirtualButtonVisible(btnSairGuerra, FALSE) 
	//SetVirtualButtonActive(btnSairGuerra, FALSE)
	
	SetVirtualButtonVisible(btnGuerra1, FALSE) 
	SetVirtualButtonActive(btnGuerra1, FALSE)
	
	
	SetSpriteVisible(Player[0,0].spr, FALSE) 
		SetSpriteVisible(Player[1,0].spr, FALSE)
		SetSpriteVisible(Player[2,0].spr, FALSE)
		SetSpriteVisible(Player[3,0].spr, FALSE)
		SetSpriteVisible(Player[4,0].spr, FALSE)
	
	
		SetSpriteVisible(Adversario[0,0].spr, FALSE)
		SetSpriteVisible(Adversario[1,0].spr, FALSE)
		SetSpriteVisible(Adversario[2,0].spr, FALSE)
		SetSpriteVisible(Adversario[3,0].spr, FALSE)
		SetSpriteVisible(Adversario[4,0].spr, FALSE)
	
		SetSpriteVisible(Player[0,0].spr2, FALSE)
		SetSpriteVisible(Player[1,0].spr2, FALSE)
		SetSpriteVisible(Player[2,0].spr2, FALSE)
		SetSpriteVisible(Player[3,0].spr2, FALSE)
		SetSpriteVisible(Player[4,0].spr2, FALSE)
	
	
		SetSpriteVisible(Adversario[0,0].spr2, FALSE)
		SetSpriteVisible(Adversario[1,0].spr2, FALSE)
		SetSpriteVisible(Adversario[2,0].spr2, FALSE)
		SetSpriteVisible(Adversario[3,0].spr2, FALSE)
		SetSpriteVisible(Adversario[4,0].spr2, FALSE)
	
		SetSpriteVisible(TiroPlayer[0,0].spr, FALSE)
		SetSpriteVisible(TiroPlayer[1,0].spr, FALSE)
		SetSpriteVisible(TiroPlayer[2,0].spr, FALSE)
		SetSpriteVisible(TiroPlayer[3,0].spr, FALSE)
		SetSpriteVisible(TiroPlayer[4,0].spr, FALSE)
	
	
		SetSpriteVisible(TiroAdversario[0,0].spr, FALSE)
		SetSpriteVisible(TiroAdversario[1,0].spr, FALSE)
		SetSpriteVisible(TiroAdversario[2,0].spr, FALSE)
		SetSpriteVisible(TiroAdversario[3,0].spr, FALSE)
		SetSpriteVisible(TiroAdversario[4,0].spr, FALSE)
	
		SetSpriteVisible(Sangue, FALSE)
	
		DeleteSprite(FlechaPlayer)
		DeleteSprite(FlechaAdversario)
	
	
endfunction


function VitoriaAdversario()
	
	GuerraEmCurso = FALSE
	
	SetSpriteVisible(Sangue, FALSE)
	
	StopSound(MusicaAtual)
	
	//DeleteSprite(bgcampodeguerra)
	
	Novatela = LoadImage("campodeguerra/voceperdeu.png")
	
	SetSpriteImage(bgcampodeguerra, Novatela)
					
	SetSpriteVisible(ForteAdversario, FALSE)
	SetSpriteVisible(FortePlayer, FALSE)
	
	//SetVirtualButtonVisible(btnSairGuerra, FALSE) 
	//SetVirtualButtonActive(btnSairGuerra, FALSE)
	
	SetVirtualButtonVisible(btnGuerra1, FALSE) 
	SetVirtualButtonActive(btnGuerra1, FALSE)
	
	
	SetSpriteVisible(Player[0,0].spr, FALSE) 
		SetSpriteVisible(Player[1,0].spr, FALSE)
		SetSpriteVisible(Player[2,0].spr, FALSE)
		SetSpriteVisible(Player[3,0].spr, FALSE)
		SetSpriteVisible(Player[4,0].spr, FALSE)
	
	
		SetSpriteVisible(Adversario[0,0].spr, FALSE)
		SetSpriteVisible(Adversario[1,0].spr, FALSE)
		SetSpriteVisible(Adversario[2,0].spr, FALSE)
		SetSpriteVisible(Adversario[3,0].spr, FALSE)
		SetSpriteVisible(Adversario[4,0].spr, FALSE)
	
		SetSpriteVisible(Player[0,0].spr2, FALSE)
		SetSpriteVisible(Player[1,0].spr2, FALSE)
		SetSpriteVisible(Player[2,0].spr2, FALSE)
		SetSpriteVisible(Player[3,0].spr2, FALSE)
		SetSpriteVisible(Player[4,0].spr2, FALSE)
	
	
		SetSpriteVisible(Adversario[0,0].spr2, FALSE)
		SetSpriteVisible(Adversario[1,0].spr2, FALSE)
		SetSpriteVisible(Adversario[2,0].spr2, FALSE)
		SetSpriteVisible(Adversario[3,0].spr2, FALSE)
		SetSpriteVisible(Adversario[4,0].spr2, FALSE)
	
		SetSpriteVisible(TiroPlayer[0,0].spr, FALSE)
		SetSpriteVisible(TiroPlayer[1,0].spr, FALSE)
		SetSpriteVisible(TiroPlayer[2,0].spr, FALSE)
		SetSpriteVisible(TiroPlayer[3,0].spr, FALSE)
		SetSpriteVisible(TiroPlayer[4,0].spr, FALSE)
	
	
		SetSpriteVisible(TiroAdversario[0,0].spr, FALSE)
		SetSpriteVisible(TiroAdversario[1,0].spr, FALSE)
		SetSpriteVisible(TiroAdversario[2,0].spr, FALSE)
		SetSpriteVisible(TiroAdversario[3,0].spr, FALSE)
		SetSpriteVisible(TiroAdversario[4,0].spr, FALSE)
	
		SetSpriteVisible(Sangue, FALSE)
	
		DeleteSprite(FlechaPlayer)
		DeleteSprite(FlechaAdversario)
	
	
endfunction


function Empate()
	
	GuerraEmCurso = FALSE
	
	SetSpriteVisible(Sangue, FALSE)
	
	StopSound(MusicaAtual)
	
	//DeleteSprite(bgcampodeguerra)
	
	Novatela = LoadImage("campodeguerra/empatou.png")
	
	SetSpriteImage(bgcampodeguerra, Novatela)
		
	SetSpriteVisible(ForteAdversario, FALSE)
	SetSpriteVisible(FortePlayer, FALSE)
	
	//SetVirtualButtonVisible(btnSairGuerra, FALSE) 
	//SetVirtualButtonActive(btnSairGuerra, FALSE)
	
	SetVirtualButtonVisible(btnGuerra1, FALSE) 
	SetVirtualButtonActive(btnGuerra1, FALSE)
	
	
	SetSpriteVisible(Player[0,0].spr, FALSE) 
		SetSpriteVisible(Player[1,0].spr, FALSE)
		SetSpriteVisible(Player[2,0].spr, FALSE)
		SetSpriteVisible(Player[3,0].spr, FALSE)
		SetSpriteVisible(Player[4,0].spr, FALSE)
	
	
		SetSpriteVisible(Adversario[0,0].spr, FALSE)
		SetSpriteVisible(Adversario[1,0].spr, FALSE)
		SetSpriteVisible(Adversario[2,0].spr, FALSE)
		SetSpriteVisible(Adversario[3,0].spr, FALSE)
		SetSpriteVisible(Adversario[4,0].spr, FALSE)
	
		SetSpriteVisible(Player[0,0].spr2, FALSE)
		SetSpriteVisible(Player[1,0].spr2, FALSE)
		SetSpriteVisible(Player[2,0].spr2, FALSE)
		SetSpriteVisible(Player[3,0].spr2, FALSE)
		SetSpriteVisible(Player[4,0].spr2, FALSE)
	
	
		SetSpriteVisible(Adversario[0,0].spr2, FALSE)
		SetSpriteVisible(Adversario[1,0].spr2, FALSE)
		SetSpriteVisible(Adversario[2,0].spr2, FALSE)
		SetSpriteVisible(Adversario[3,0].spr2, FALSE)
		SetSpriteVisible(Adversario[4,0].spr2, FALSE)
	
		SetSpriteVisible(TiroPlayer[0,0].spr, FALSE)
		SetSpriteVisible(TiroPlayer[1,0].spr, FALSE)
		SetSpriteVisible(TiroPlayer[2,0].spr, FALSE)
		SetSpriteVisible(TiroPlayer[3,0].spr, FALSE)
		SetSpriteVisible(TiroPlayer[4,0].spr, FALSE)
	
	
		SetSpriteVisible(TiroAdversario[0,0].spr, FALSE)
		SetSpriteVisible(TiroAdversario[1,0].spr, FALSE)
		SetSpriteVisible(TiroAdversario[2,0].spr, FALSE)
		SetSpriteVisible(TiroAdversario[3,0].spr, FALSE)
		SetSpriteVisible(TiroAdversario[4,0].spr, FALSE)
	
		SetSpriteVisible(Sangue, FALSE)
	
		DeleteSprite(FlechaPlayer)
		DeleteSprite(FlechaAdversario)
	
	
endfunction