// File: personagens_telas.agc
// Created: 23-02-16

global treinador as integer
global armeiro as integer
global construtor as integer
global esposa as integer
global pesquisador as integer
global pastor as integer
global conselheiro as integer
global conselheiroPeq as integer


function CriaPersonagensTelas()
	
	treinador = 101
	
	DeleteSprite (treinador)	
	
	CreateSprite (treinador, 0 )
		
	SetSpriteSize(treinador,1000,1000)
		
		AddSpriteAnimationFrame ( treinador, LoadImage ( "telas/treinamento/personagem/1.png" ))
		AddSpriteAnimationFrame ( treinador, LoadImage ( "telas/treinamento/personagem/2.png" ))
				
	
	PlaySprite ( treinador, 2, 1, 1, 10 )	
	
	
	SetSpriteVisible(treinador, FALSE)
	
	SetSpriteDepth(treinador, 1)
	
	
	
	armeiro = 102
	
	DeleteSprite (armeiro)	
	
	CreateSprite (armeiro, 0 )
		
	SetSpriteSize(armeiro,800,800)
		
		AddSpriteAnimationFrame ( armeiro, LoadImage ( "telas/armas/personagem/1.png" ))
		AddSpriteAnimationFrame ( armeiro, LoadImage ( "telas/armas/personagem/2.png" ))
				
	
	PlaySprite ( armeiro, 2, 1, 1, 10 )		
	
	SetSpriteVisible(armeiro, FALSE)
	
	SetSpriteDepth(armeiro, 1)
	
	
	
	construtor = 103
	
	DeleteSprite (construtor)	
	
	CreateSprite (construtor, 0 )
		
	SetSpriteSize(construtor,800,800)
		
		AddSpriteAnimationFrame ( construtor, LoadImage ( "telas/construcoes/personagem/1.png" ))
		AddSpriteAnimationFrame ( construtor, LoadImage ( "telas/construcoes/personagem/2.png" ))
						
	
	PlaySprite ( construtor, 2, 1, 1, 10 )		
	
	SetSpriteVisible(construtor, FALSE)
	
	SetSpriteDepth(construtor, 1)
	
	
	esposa = 104
	
	DeleteSprite (esposa)	
	
	CreateSprite (esposa, 0 )
		
	SetSpriteSize(esposa,600,600)
		
		AddSpriteAnimationFrame ( esposa, LoadImage ( "telas/descansar/personagem/1.png" ))
		AddSpriteAnimationFrame ( esposa, LoadImage ( "telas/descansar/personagem/2.png" ))
					
	
	PlaySprite ( esposa, 2, 1, 1, 10 )		
	
	SetSpriteVisible(esposa, FALSE)
	
	SetSpriteDepth(esposa, 1)
	
	
	
	pesquisador = 105
	
	DeleteSprite (pesquisador)	
	
	CreateSprite (pesquisador, 0 )
		
	SetSpriteSize(pesquisador,800,800)
		
		AddSpriteAnimationFrame ( pesquisador, LoadImage ( "telas/pesquisa/personagem/1.png" ))
		AddSpriteAnimationFrame ( pesquisador, LoadImage ( "telas/pesquisa/personagem/2.png" ))
					
	
	PlaySprite ( pesquisador, 2, 1, 1, 10 )		
	
	SetSpriteVisible(pesquisador, FALSE)
	
	SetSpriteDepth(pesquisador, 1)
	
	
	pastor = 106
	
	DeleteSprite (pastor)	
	
	CreateSprite (pastor, 0 )
		
	SetSpriteSize(pastor,800,800)
		
		AddSpriteAnimationFrame ( pastor, LoadImage ( "telas/igreja/personagem/1.png" ))
		AddSpriteAnimationFrame ( pastor, LoadImage ( "telas/igreja/personagem/2.png" ))
					
	
	PlaySprite ( pastor, 2, 1, 1, 10 )		
	
	SetSpriteVisible(pastor, FALSE)
	
	SetSpriteDepth(pastor, 1)
	
	
	
	
	conselheiro = 107
	
	DeleteSprite (conselheiro)	
	
	CreateSprite (conselheiro, 0 )
		
	SetSpriteSize(conselheiro,800,800)
		
		AddSpriteAnimationFrame ( conselheiro, LoadImage ( "telas/seureino/personagem/1.png" ))
		AddSpriteAnimationFrame ( conselheiro, LoadImage ( "telas/seureino/personagem/2.png" ))
					
	
	PlaySprite ( conselheiro, 2, 1, 1, 10 )		
	
	SetSpriteVisible(conselheiro, FALSE)
	
	SetSpriteDepth(conselheiro, 1)
	
	
	conselheiroPeq = 108
	
	DeleteSprite (conselheiroPeq)	
	
	CreateSprite (conselheiroPeq, 0 )
		
	SetSpriteSize(conselheiroPeq,300,300)
		
		AddSpriteAnimationFrame ( conselheiroPeq, LoadImage ( "telas/seureino/personagem/1.png" ))
		AddSpriteAnimationFrame ( conselheiroPeq, LoadImage ( "telas/seureino/personagem/2.png" ))
					
	
	PlaySprite ( conselheiroPeq, 2, 1, 1, 10 )		
	
	SetSpritePosition(conselheiroPeq, 2100, 708)
	
	SetSpriteVisible(conselheiroPeq, FALSE)
	
	SetSpriteDepth(conselheiroPeq, 1)
	
	
endfunction