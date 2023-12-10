// File: arqueiros_estilo.agc
// Created: 23-02-16


Global EstiloArqueiro as integer
Global EstiloArqueiro2 as integer
Global EstiloArqueiro4 as integer
Global EstiloArqueiro5 as integer
Global EstiloArqueiro6 as integer
Global EstiloArqueiro7 as integer
Global EstiloArqueiro8 as integer
Global EstiloArqueiro9 as integer

function EstiloArqueiros(EstiloArqueiroAtual)
	
	EstiloArqueiro = EstiloArqueiroAtual
			
	if(EstiloArqueiro = 1)
	
	ForcaExercitoCalculadoPlayer = ForcaExercitoCalculadoPlayer + 2
			
	
	DeleteSprite (EstiloArqueiro)	
	
	CreateSprite (EstiloArqueiro, 0 )
		
	SetSpriteSize(EstiloArqueiro,205,255)
		
		AddSpriteAnimationFrame ( EstiloArqueiro, LoadImage ( "arqueiros/01/parado/1.png" ))
		AddSpriteAnimationFrame ( EstiloArqueiro, LoadImage ( "arqueiros/01/parado/2.png" ))
	
	
	PlaySprite ( EstiloArqueiro, 2, 1, 1, 10 )
	
	SetSpriteVisible(EstiloArqueiro, FALSE)
	
	SetSpriteDepth(EstiloArqueiro, 1)
	
		
	
	DeleteSprite (EstiloArqueiro2)		
	
	CreateSprite (EstiloArqueiro2, 0 )
		
	SetSpriteSize(EstiloArqueiro2,432,235)
		
		AddSpriteAnimationFrame ( EstiloArqueiro2, LoadImage ( "arqueiros/01/atirando/1.png" ))
		AddSpriteAnimationFrame ( EstiloArqueiro2, LoadImage ( "arqueiros/01/atirando/2.png" ))
		AddSpriteAnimationFrame ( EstiloArqueiro2, LoadImage ( "arqueiros/01/atirando/3.png" ))
		
		
	PlaySprite ( EstiloArqueiro2, 3, 1, 1, 10 )
	
	SetSpriteVisible(EstiloArqueiro2, FALSE)
	
	SetSpriteDepth(EstiloArqueiro2, 1)
	
	
	
	endif	
	
	
	if(EstiloArqueiro = 2)
	
	ForcaExercitoCalculadoPlayer = ForcaExercitoCalculadoPlayer + 4			
	
	DeleteSprite (EstiloArqueiro)	
	
	CreateSprite (EstiloArqueiro, 0 )
		
	SetSpriteSize(EstiloArqueiro,205,255)
		
		AddSpriteAnimationFrame ( EstiloArqueiro, LoadImage ( "arqueiros/02/parado/1.png" ))
		AddSpriteAnimationFrame ( EstiloArqueiro, LoadImage ( "arqueiros/02/parado/2.png" ))
			
	
	PlaySprite ( EstiloArqueiro, 2, 1, 1, 10 )
	
	SetSpriteVisible(EstiloArqueiro, FALSE)
	
	SetSpriteDepth(EstiloArqueiro, 1)
	
	
	
		
	DeleteSprite (EstiloArqueiro2)		
	
	CreateSprite (EstiloArqueiro2, 0 )
		
	SetSpriteSize(EstiloArqueiro2,432,235)
		
		
		AddSpriteAnimationFrame ( EstiloArqueiro2, LoadImage ( "arqueiros/02/atirando/1.png" ))
		AddSpriteAnimationFrame ( EstiloArqueiro2, LoadImage ( "arqueiros/02/atirando/2.png" ))
		AddSpriteAnimationFrame ( EstiloArqueiro2, LoadImage ( "arqueiros/02/atirando/3.png" ))
		
			
		
	PlaySprite ( EstiloArqueiro2, 3, 1, 1, 10 )
	
	SetSpriteVisible(EstiloArqueiro2, FALSE)
	
	SetSpriteDepth(EstiloArqueiro2, 1)
	
	endif
	
	
	if(EstiloArqueiro = 3)
	
	ForcaExercitoCalculadoPlayer = ForcaExercitoCalculadoPlayer + 6
			
	
	DeleteSprite (EstiloArqueiro)	
	
	CreateSprite (EstiloArqueiro, 0 )
		
	SetSpriteSize(EstiloArqueiro,205,255)
		
		AddSpriteAnimationFrame ( EstiloArqueiro, LoadImage ( "arqueiros/03/parado/1.png" ))
		AddSpriteAnimationFrame ( EstiloArqueiro, LoadImage ( "arqueiros/03/parado/2.png" ))
	
	
	PlaySprite ( EstiloArqueiro, 2, 1, 1, 10 )
	
	SetSpriteVisible(EstiloArqueiro, FALSE)
	
	SetSpriteDepth(EstiloArqueiro, 1)
	
		
	
	DeleteSprite (EstiloArqueiro2)		
	
	CreateSprite (EstiloArqueiro2, 0 )
		
	SetSpriteSize(EstiloArqueiro2,432,235)
		
		AddSpriteAnimationFrame ( EstiloArqueiro2, LoadImage ( "arqueiros/03/atirando/1.png" ))
		AddSpriteAnimationFrame ( EstiloArqueiro2, LoadImage ( "arqueiros/03/atirando/2.png" ))
		AddSpriteAnimationFrame ( EstiloArqueiro2, LoadImage ( "arqueiros/03/atirando/3.png" ))
		
		
	PlaySprite ( EstiloArqueiro2, 3, 1, 1, 10 )
	
	SetSpriteVisible(EstiloArqueiro2, FALSE)
	
	SetSpriteDepth(EstiloArqueiro2, 1)
	
	
	
	endif	
	
	
	if(EstiloArqueiro = 4)
	
	ForcaExercitoCalculadoPlayer = ForcaExercitoCalculadoPlayer + 8
			
	
	DeleteSprite (EstiloArqueiro)	
	
	CreateSprite (EstiloArqueiro, 0 )
		
	SetSpriteSize(EstiloArqueiro,205,255)
		
		AddSpriteAnimationFrame ( EstiloArqueiro, LoadImage ( "arqueiros/04/parado/1.png" ))
		AddSpriteAnimationFrame ( EstiloArqueiro, LoadImage ( "arqueiros/04/parado/2.png" ))
	
	
	PlaySprite ( EstiloArqueiro, 2, 1, 1, 10 )
	
	SetSpriteVisible(EstiloArqueiro, FALSE)
	
	SetSpriteDepth(EstiloArqueiro, 1)
	
		
	
	DeleteSprite (EstiloArqueiro2)		
	
	CreateSprite (EstiloArqueiro2, 0 )
		
	SetSpriteSize(EstiloArqueiro2,432,235)
		
		AddSpriteAnimationFrame ( EstiloArqueiro2, LoadImage ( "arqueiros/04/atirando/1.png" ))
		AddSpriteAnimationFrame ( EstiloArqueiro2, LoadImage ( "arqueiros/04/atirando/2.png" ))
		AddSpriteAnimationFrame ( EstiloArqueiro2, LoadImage ( "arqueiros/04/atirando/3.png" ))
		
		
	PlaySprite ( EstiloArqueiro2, 3, 1, 1, 10 )
	
	SetSpriteVisible(EstiloArqueiro2, FALSE)
	
	SetSpriteDepth(EstiloArqueiro2, 1)
	
	
	
	endif	
	
	
	if(EstiloArqueiro = 5)
	
	ForcaExercitoCalculadoPlayer = ForcaExercitoCalculadoPlayer + 10
			
	
	DeleteSprite (EstiloArqueiro)	
	
	CreateSprite (EstiloArqueiro, 0 )
		
	SetSpriteSize(EstiloArqueiro,205,255)
		
		AddSpriteAnimationFrame ( EstiloArqueiro, LoadImage ( "arqueiros/05/parado/1.png" ))
		AddSpriteAnimationFrame ( EstiloArqueiro, LoadImage ( "arqueiros/05/parado/2.png" ))
	
	
	PlaySprite ( EstiloArqueiro, 2, 1, 1, 10 )
	
	SetSpriteVisible(EstiloArqueiro, FALSE)
	
	SetSpriteDepth(EstiloArqueiro, 1)
	
		
	
	DeleteSprite (EstiloArqueiro2)		
	
	CreateSprite (EstiloArqueiro2, 0 )
		
	SetSpriteSize(EstiloArqueiro2,432,235)
		
		AddSpriteAnimationFrame ( EstiloArqueiro2, LoadImage ( "arqueiros/05/atirando/1.png" ))
		AddSpriteAnimationFrame ( EstiloArqueiro2, LoadImage ( "arqueiros/05/atirando/2.png" ))
		AddSpriteAnimationFrame ( EstiloArqueiro2, LoadImage ( "arqueiros/05/atirando/3.png" ))
		
		
	PlaySprite ( EstiloArqueiro2, 3, 1, 1, 10 )
	
	SetSpriteVisible(EstiloArqueiro2, FALSE)
	
	SetSpriteDepth(EstiloArqueiro2, 1)
	
	
	
	endif	
	
	if(EstiloArqueiro = 6)
	
	ForcaExercitoCalculadoPlayer = ForcaExercitoCalculadoPlayer + 12
			
	
	DeleteSprite (EstiloArqueiro)	
	
	CreateSprite (EstiloArqueiro, 0 )
		
	SetSpriteSize(EstiloArqueiro,205,255)
		
		AddSpriteAnimationFrame ( EstiloArqueiro, LoadImage ( "arqueiros/06/parado/1.png" ))
		AddSpriteAnimationFrame ( EstiloArqueiro, LoadImage ( "arqueiros/06/parado/2.png" ))
	
	
	PlaySprite ( EstiloArqueiro, 2, 1, 1, 10 )
	
	SetSpriteVisible(EstiloArqueiro, FALSE)
	
	SetSpriteDepth(EstiloArqueiro, 1)
	
		
	
	DeleteSprite (EstiloArqueiro2)		
	
	CreateSprite (EstiloArqueiro2, 0 )
		
	SetSpriteSize(EstiloArqueiro2,432,235)
		
		AddSpriteAnimationFrame ( EstiloArqueiro2, LoadImage ( "arqueiros/06/atirando/1.png" ))
		AddSpriteAnimationFrame ( EstiloArqueiro2, LoadImage ( "arqueiros/06/atirando/2.png" ))
		AddSpriteAnimationFrame ( EstiloArqueiro2, LoadImage ( "arqueiros/06/atirando/3.png" ))
		
		
	PlaySprite ( EstiloArqueiro2, 3, 1, 1, 10 )
	
	SetSpriteVisible(EstiloArqueiro2, FALSE)
	
	SetSpriteDepth(EstiloArqueiro2, 1)
	
	
	
	endif	
	
	if(EstiloArqueiro = 7)
	
	ForcaExercitoCalculadoPlayer = ForcaExercitoCalculadoPlayer + 14
			
	
	DeleteSprite (EstiloArqueiro)	
	
	CreateSprite (EstiloArqueiro, 0 )
		
	SetSpriteSize(EstiloArqueiro,205,255)
		
		AddSpriteAnimationFrame ( EstiloArqueiro, LoadImage ( "arqueiros/07/parado/1.png" ))
		AddSpriteAnimationFrame ( EstiloArqueiro, LoadImage ( "arqueiros/07/parado/2.png" ))
	
	
	PlaySprite ( EstiloArqueiro, 2, 1, 1, 10 )
	
	SetSpriteVisible(EstiloArqueiro, FALSE)
	
	SetSpriteDepth(EstiloArqueiro, 1)
	
		
	
	DeleteSprite (EstiloArqueiro2)		
	
	CreateSprite (EstiloArqueiro2, 0 )
		
	SetSpriteSize(EstiloArqueiro2,432,235)
		
		AddSpriteAnimationFrame ( EstiloArqueiro2, LoadImage ( "arqueiros/07/atirando/1.png" ))
		AddSpriteAnimationFrame ( EstiloArqueiro2, LoadImage ( "arqueiros/07/atirando/2.png" ))
		AddSpriteAnimationFrame ( EstiloArqueiro2, LoadImage ( "arqueiros/07/atirando/3.png" ))
		
		
	PlaySprite ( EstiloArqueiro2, 3, 1, 1, 10 )
	
	SetSpriteVisible(EstiloArqueiro2, FALSE)
	
	SetSpriteDepth(EstiloArqueiro2, 1)
	
	
	
	endif	
	
	
	if(EstiloArqueiro = 8)
	
	ForcaExercitoCalculadoPlayer = ForcaExercitoCalculadoPlayer + 16
			
	
	DeleteSprite (EstiloArqueiro)	
	
	CreateSprite (EstiloArqueiro, 0 )
		
	SetSpriteSize(EstiloArqueiro,205,255)
		
		AddSpriteAnimationFrame ( EstiloArqueiro, LoadImage ( "arqueiros/08/parado/1.png" ))
		AddSpriteAnimationFrame ( EstiloArqueiro, LoadImage ( "arqueiros/08/parado/2.png" ))
	
	
	PlaySprite ( EstiloArqueiro, 2, 1, 1, 10 )
	
	SetSpriteVisible(EstiloArqueiro, FALSE)
	
	SetSpriteDepth(EstiloArqueiro, 1)
	
		
	
	DeleteSprite (EstiloArqueiro2)		
	
	CreateSprite (EstiloArqueiro2, 0 )
		
	SetSpriteSize(EstiloArqueiro2,432,235)
		
		AddSpriteAnimationFrame ( EstiloArqueiro2, LoadImage ( "arqueiros/08/atirando/1.png" ))
		AddSpriteAnimationFrame ( EstiloArqueiro2, LoadImage ( "arqueiros/08/atirando/2.png" ))
		AddSpriteAnimationFrame ( EstiloArqueiro2, LoadImage ( "arqueiros/08/atirando/3.png" ))
		
		
	PlaySprite ( EstiloArqueiro2, 3, 1, 1, 10 )
	
	SetSpriteVisible(EstiloArqueiro2, FALSE)
	
	SetSpriteDepth(EstiloArqueiro2, 1)
	
	
	
	endif	
	
	if(EstiloArqueiro = 9)
	
	ForcaExercitoCalculadoPlayer = ForcaExercitoCalculadoPlayer + 18
			
	
	DeleteSprite (EstiloArqueiro)	
	
	CreateSprite (EstiloArqueiro, 0 )
		
	SetSpriteSize(EstiloArqueiro,205,255)
		
		AddSpriteAnimationFrame ( EstiloArqueiro, LoadImage ( "arqueiros/09/parado/1.png" ))
		AddSpriteAnimationFrame ( EstiloArqueiro, LoadImage ( "arqueiros/09/parado/2.png" ))
	
	
	PlaySprite ( EstiloArqueiro, 2, 1, 1, 10 )
	
	SetSpriteVisible(EstiloArqueiro, FALSE)
	
	SetSpriteDepth(EstiloArqueiro, 1)
	
		
	
	DeleteSprite (EstiloArqueiro2)		
	
	CreateSprite (EstiloArqueiro2, 0 )
		
	SetSpriteSize(EstiloArqueiro2,432,235)
		
		AddSpriteAnimationFrame ( EstiloArqueiro2, LoadImage ( "arqueiros/09/atirando/1.png" ))
		AddSpriteAnimationFrame ( EstiloArqueiro2, LoadImage ( "arqueiros/09/atirando/2.png" ))
		AddSpriteAnimationFrame ( EstiloArqueiro2, LoadImage ( "arqueiros/09/atirando/3.png" ))
		
		
	PlaySprite ( EstiloArqueiro2, 3, 1, 1, 10 )
	
	SetSpriteVisible(EstiloArqueiro2, FALSE)
	
	SetSpriteDepth(EstiloArqueiro2, 1)
	
	
	
	endif	
		
	
	
	
endfunction