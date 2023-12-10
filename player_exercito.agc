// File: player_exercito.agc
// Created: 23-02-16

type oPlayer
		vivo as integer
		estilo as integer
		estado as integer
		vida as float
		spr as integer
		spr2 as integer
		pontos as integer
		x as float
		y as float
endtype

global Player as oPlayer[4,0] 

global TempoMovimentoPlayer as float


function CriaExercitoPlayer()
	
			EstiloArqueiroAtual = TipoArqueirosSalvo
		
			Player[0,0].estilo = 2
			Player[0,0].estado = 1		
			Player[0,0].vida = 100
			Player[0,0].vivo = TRUE
			
			EstiloArqueiro = Player[0,0].estilo
			EstiloArqueiro2 = Player[0,0].estado				
			
			EstiloArqueiros(EstiloArqueiroAtual)
				
			Player[0,0].spr =  CloneSprite (EstiloArqueiro)		
			Player[0,0].spr2 =  CloneSprite (EstiloArqueiro2)	
			
						
			Player[0,0].x = 50
			
			Player[0,0].y = 600
			
			SetSpritePosition( Player[0,0].spr , Player[0,0].x, Player[0,0].y)
			SetSpritePosition( Player[0,0].spr2 , Player[0,0].x, Player[0,0].y +40)
			
			SetSpriteFlip ( Player[0,0].spr, 1, 0 )	
			SetSpriteFlip ( Player[0,0].spr2, 1, 0 )
			
			SetSpriteVisible(Player[0,0].spr, FALSE)
			SetSpriteVisible(Player[0,0].spr2, FALSE)
			
			
			
			Player[1,0].estilo = 2	
			Player[1,0].estado = 1	
			Player[1,0].vida = 100
			Player[1,0].vivo = TRUE
			
			EstiloArqueiro = Player[1,0].estilo
			EstiloArqueiro2 = Player[1,0].estado					
			
			EstiloArqueiros(EstiloArqueiroAtual)
				
			Player[1,0].spr =  CloneSprite (EstiloArqueiro)
			Player[1,0].spr2 =  CloneSprite (EstiloArqueiro2)		
			
						
			Player[1,0].x = 200
			
			Player[1,0].y = 400
			
			SetSpritePosition( Player[1,0].spr , Player[1,0].x, Player[1,0].y)
			SetSpritePosition( Player[1,0].spr2 , Player[1,0].x, Player[1,0].y + 40)
			
			SetSpriteFlip ( Player[1,0].spr, 1, 0 )	
			SetSpriteFlip ( Player[1,0].spr2, 1, 0 )	
			
			SetSpriteVisible(Player[1,0].spr, FALSE)
			SetSpriteVisible(Player[1,0].spr2, FALSE)
			
			
			
			
			Player[2,0].estilo = 2		
			Player[2,0].estado = 1
			Player[2,0].vida = 100
			Player[2,0].vivo = TRUE
			
			EstiloArqueiro = Player[2,0].estilo
			EstiloArqueiro2 = Player[2,0].estado					
			
			EstiloArqueiros(EstiloArqueiroAtual)
				
			Player[2,0].spr =  CloneSprite (EstiloArqueiro)	
			Player[2,0].spr2 =  CloneSprite (EstiloArqueiro2)		
			
						
			Player[2,0].x = 300
			
			Player[2,0].y = 700
			
			SetSpritePosition( Player[2,0].spr , Player[2,0].x, Player[2,0].y)
			SetSpritePosition( Player[2,0].spr2 , Player[2,0].x, Player[2,0].y + 40)
			
			SetSpriteFlip ( Player[2,0].spr, 1, 0 )	
			SetSpriteFlip ( Player[2,0].spr2, 1, 0 )	
			
			SetSpriteVisible(Player[2,0].spr, FALSE)
			SetSpriteVisible(Player[2,0].spr2, FALSE)
			
			
			
			Player[3,0].estilo = 2	
			Player[3,0].estado = 1	
			Player[3,0].vida = 100
			Player[3,0].vivo = TRUE
			
			EstiloArqueiro = Player[3,0].estilo	
			EstiloArqueiro2 = Player[3,0].estado				
			
			EstiloArqueiros(EstiloArqueiroAtual)
				
			Player[3,0].spr =  CloneSprite (EstiloArqueiro)		
			Player[3,0].spr2 =  CloneSprite (EstiloArqueiro2)
			
						
			Player[3,0].x = 500
			
			Player[3,0].y = 400
			
			SetSpritePosition( Player[3,0].spr , Player[3,0].x, Player[3,0].y)
			SetSpritePosition( Player[3,0].spr2 , Player[3,0].x, Player[3,0].y + 40)
			
			SetSpriteFlip ( Player[3,0].spr, 1, 0 )	
			SetSpriteFlip ( Player[3,0].spr2, 1, 0 )	
			
			SetSpriteVisible(Player[3,0].spr, FALSE)
			SetSpriteVisible(Player[3,0].spr2, FALSE)
			
			
			
			Player[4,0].estilo = 2	
			Player[4,0].estado = 1	
			Player[4,0].vida = 100
			Player[4,0].vivo = TRUE
			
			EstiloArqueiro = Player[4,0].estilo	
			EstiloArqueiro2 = Player[4,0].estado				
			
			EstiloArqueiros(EstiloArqueiroAtual)
				
			Player[4,0].spr =  CloneSprite (EstiloArqueiro)		
			Player[4,0].spr2 =  CloneSprite (EstiloArqueiro2)	
			
						
			Player[4,0].x = 600
			
			Player[4,0].y = 700
			
			SetSpritePosition( Player[4,0].spr , Player[4,0].x, Player[4,0].y)
			SetSpritePosition( Player[4,0].spr2 , Player[4,0].x, Player[4,0].y + 40)
			
			SetSpriteFlip ( Player[4,0].spr, 1, 0 )	
			SetSpriteFlip ( Player[4,0].spr2, 1, 0 )	
			
			SetSpriteVisible(Player[4,0].spr, FALSE)
			SetSpriteVisible(Player[4,0].spr2, FALSE)
			
	
	
endfunction