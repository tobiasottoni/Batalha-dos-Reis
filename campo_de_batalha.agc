// File: campo_de_batalha.agc
// Created: 23-02-16

Global bgcampodeguerra as integer

Global GuerraEmCurso as integer

Global ExibeNomePlayer1 as integer

Global ExibeNomePlayer2 as integer

Global ExibeVersus as integer

Global NomePlayer1 as string

Global NomePlayer2 as string

Global MusicaAtual as integer

Global ForcaExercitoCalculadoPlayer as float

Global DanoExercitoCalculadoPlayer as float

Global VelocidadeFlechaCalculadaPlayer as float

Global ForcaExercitoCalculadoAdversario as float

Global DanoExercitoCalculadoAdversario as float

Global VelocidadeFlechaCalculadaAdversario as float




function IniciaGuerra()
	
	SetSpriteVisible(conselheiroPeq, FALSE)
			
	
	EnergiaSalvo = EnergiaSalvo - 100
	
	AtualizaEnergiaJogador(EnergiaSalvo)
	
	
	FavorDivinoSalvo = FavorDivinoSalvo - 100
	
	AtualizaFavorDivinoJogador(FavorDivinoSalvo)
	
	
	
	ForcaExercitoCalculadoPlayer = 0 
	
	ForcaExercitoCalculadoAdversario = 0
	
	CalculaForcaExercitoPlayer()
	CalculaForcaExercitoAdversario()
	
	
	bgcampodeguerra = 41	
		
	bgcampodeguerra = CreateSprite(LoadImage("campodeguerra/bgbatalha.png"))
	SetSpriteSize(bgcampodeguerra, LarguraTela, AlturaTela)
	SetSpriteDepth (bgcampodeguerra, 999)
	SetSpriteVisible(bgcampodeguerra, TRUE)
	
	
	//SetSpriteVisible(FortePlayer, TRUE)
									
	
	LevelForteAdversario = 4
	
	EstadoForteAdversario = 1
	
	DefineForteAdversario()
	
	
    Player[0,0].vivo = TRUE
    Player[1,0].vivo = TRUE
    Player[2,0].vivo = TRUE
    Player[3,0].vivo = TRUE
    Player[4,0].vivo = TRUE
    
    Player[0,0].vida = 100
    Player[1,0].vida = 100
    Player[2,0].vida = 100
    Player[3,0].vida = 100
    Player[4,0].vida = 100
    
    for x = 0 to 4
		
	TiroPlayer[x,0].ativo =  FALSE
	TiroPlayer[x,0].x =  0
	TiroPlayer[x,0].y =  0
	
	next x	
    
	
	SetSpriteVisible(Player[0,0].spr, TRUE)
	SetSpriteVisible(Player[1,0].spr, TRUE)
	SetSpriteVisible(Player[2,0].spr, TRUE)
	SetSpriteVisible(Player[3,0].spr, TRUE)
	SetSpriteVisible(Player[4,0].spr, TRUE)
	
	Adversario[0,0].vivo = TRUE
	Adversario[1,0].vivo = TRUE
	Adversario[2,0].vivo = TRUE
	Adversario[3,0].vivo = TRUE
	Adversario[4,0].vivo = TRUE
	
	Adversario[0,0].vida = 100
	Adversario[1,0].vida = 100
	Adversario[2,0].vida = 100
	Adversario[3,0].vida = 100
	Adversario[4,0].vida = 100
	
	for y = 0 to 4
		
	TiroAdversario[y,0].ativo =  FALSE
	TiroAdversario[y,0].x =  0
	TiroAdversario[y,0].y =  0
	
	next y	
 
	
	
	SetSpriteVisible(Adversario[0,0].spr, TRUE)
	SetSpriteVisible(Adversario[1,0].spr, TRUE)
	SetSpriteVisible(Adversario[2,0].spr, TRUE)
	SetSpriteVisible(Adversario[3,0].spr, TRUE)
	SetSpriteVisible(Adversario[4,0].spr, TRUE)
	
	DefineFlechaJogador()
	
	IniciaTirosPlayer()
	
	DefineFlechaAdversario()
	
	IniciaTirosAdversario()
	
			
	SetVirtualButtonVisible(btnGuerra1, TRUE) 
	SetVirtualButtonActive(btnGuerra1, TRUE)
	
	SetVirtualButtonVisible(btnSairGuerra, TRUE) 
	SetVirtualButtonActive(btnSairGuerra, TRUE)
	
	MusicaAtual = Random(30,33)
	
	PlaySound(MusicaAtual,VolumeMusicasAtual,TRUE)
	
	GuerraEmCurso = TRUE
		
			
			
endfunction


function CalculaForcaExercitoPlayer()
	
	ForcaExercitoCalculadoPlayer	 = (EnergiaSalvo /10) + (FavorDivinoSalvo/10) + 	ForcaExercitoCalculadoPlayer 
	
	DanoExercitoCalculadoPlayer = ForcaExercitoCalculadoPlayer / 102
	
	VelocidadeFlechaCalculadaPlayer = (EnergiaSalvo + FavorDivinoSalvo) / 30
	
	AtualizaForcaExercitoJogador(ForcaExercitoCalculadoPlayer)

endfunction




function CalculaForcaExercitoAdversario()
	
	
	EnergiaAdversario = Random(1000, 2000)
	
	FavorDivinoAdversario = Random(1000, 2000)
	
	
	ForcaExercitoCalculadoAdversario	 = (EnergiaAdversario /10) + (FavorDivinoAdversario/10) + 	ForcaExercitoCalculadoAdversario 
	
	DanoExercitoCalculadoAdversario = ForcaExercitoCalculadoAdversario / 202
	
	VelocidadeFlechaCalculadaAdversario = (EnergiaAdversario + FavorDivinoAdversario) / 30

endfunction


function FechaTelaGuerra()
	
	GuerraEmCurso = FALSE
	
	SetSpriteVisible(Sangue, FALSE)
	
	StopSound(MusicaAtual)
	
	DeleteSprite(bgcampodeguerra)
		
	SetSpriteVisible(ForteAdversario, FALSE)
	SetSpriteVisible(FortePlayer, FALSE)
	
	SetVirtualButtonVisible(btnSairGuerra, FALSE) 
	SetVirtualButtonActive(btnSairGuerra, FALSE)
	
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

