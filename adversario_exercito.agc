// File: adversario_exercito.agc
// Created: 23-02-16

type oAdversario
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

global Adversario as oAdversario[4,0] 

global TempoMovimentoAdversario as float


function CriaExercitoAdversario()
	
			EstiloArqueiroAtual = random (1,9)
			
			if EstiloArqueiroAtual = 1
				
				ForcaExercitoCalculadoAdversario = ForcaExercitoCalculadoAdversario + 10
		
			endif
			
			if EstiloArqueiroAtual = 2
				
				ForcaExercitoCalculadoAdversario = ForcaExercitoCalculadoAdversario + 20
		
			endif
			
			if EstiloArqueiroAtual = 3
				
				ForcaExercitoCalculadoAdversario = ForcaExercitoCalculadoAdversario + 30
		
			endif
			
			if EstiloArqueiroAtual = 4
				
				ForcaExercitoCalculadoAdversario = ForcaExercitoCalculadoAdversario + 40
		
			endif
			
			if EstiloArqueiroAtual = 5
				
				ForcaExercitoCalculadoAdversario = ForcaExercitoCalculadoAdversario + 50
		
			endif
			
			if EstiloArqueiroAtual = 6
				
				ForcaExercitoCalculadoAdversario = ForcaExercitoCalculadoAdversario + 60
		
			endif
			
			if EstiloArqueiroAtual = 7
				
				ForcaExercitoCalculadoAdversario = ForcaExercitoCalculadoAdversario + 70
		
			endif
			
			if EstiloArqueiroAtual = 8
				
				ForcaExercitoCalculadoAdversario = ForcaExercitoCalculadoAdversario + 80
		
			endif
			
			if EstiloArqueiroAtual = 9
				
				ForcaExercitoCalculadoAdversario = ForcaExercitoCalculadoAdversario + 90
		
			endif
		
			Adversario[0,0].estilo = 2
			Adversario[0,0].estado = 3	
			Adversario[0,0].vida = 100		
			Adversario[0,0].vivo = TRUE	
			
			EstiloArqueiro = Adversario[0,0].estilo
			EstiloArqueiro2 = Adversario[0,0].estado					
			
			EstiloArqueiros(EstiloArqueiroAtual)
				
			Adversario[0,0].spr =  CloneSprite (EstiloArqueiro)		
			Adversario[0,0].spr2 =  CloneSprite (EstiloArqueiro2)
			
			
						
			Adversario[0,0].x = LarguraTela - 15 - GetSpriteWidth(Adversario[0,0].spr)
			
			Adversario[0,0].y = 77
			
			SetSpritePosition( Adversario[0,0].spr , Adversario[0,0].x, Adversario[0,0].y)
			SetSpritePosition( Adversario[0,0].spr2 , Adversario[0,0].x - 160, Adversario[0,0].y +40)
			
			SetSpriteVisible(Adversario[0,0].spr, FALSE)
			SetSpriteVisible(Adversario[0,0].spr2, FALSE)
			
			
			
			Adversario[1,0].estilo = 2		
			Adversario[1,0].estado = 3
			Adversario[1,0].vida = 100
			Adversario[1,0].vivo = TRUE
			
			EstiloArqueiro = Adversario[1,0].estilo
			EstiloArqueiro2 = Adversario[1,0].estado										
			
			EstiloArqueiros(EstiloArqueiroAtual)
				
			Adversario[1,0].spr =  CloneSprite (EstiloArqueiro)		
			Adversario[1,0].spr2 =  CloneSprite (EstiloArqueiro2)
			
						
			Adversario[1,0].x = LarguraTela - 320 - GetSpriteWidth(Adversario[1,0].spr)
			
			Adversario[1,0].y = 120
			
			SetSpritePosition( Adversario[1,0].spr , Adversario[1,0].x, Adversario[1,0].y)
			SetSpritePosition( Adversario[1,0].spr2 , Adversario[1,0].x -160, Adversario[1,0].y + 40)
			
			SetSpriteVisible(Adversario[1,0].spr, FALSE)
			SetSpriteVisible(Adversario[1,0].spr2, FALSE)
			
			
			
			
			Adversario[2,0].estilo = 2		
			Adversario[2,0].estado = 3	
			Adversario[2,0].vida = 100
			Adversario[2,0].vivo = TRUE
			
			EstiloArqueiro = Adversario[2,0].estilo	
			EstiloArqueiro2 = Adversario[2,0].estado									
			
			EstiloArqueiros(EstiloArqueiroAtual)
				
			Adversario[2,0].spr =  CloneSprite (EstiloArqueiro)		
			Adversario[2,0].spr2 =  CloneSprite (EstiloArqueiro2)	
			
						
			Adversario[2,0].x = LarguraTela - 50 - GetSpriteWidth(Adversario[2,0].spr)
			
			Adversario[2,0].y = 290
			
			SetSpritePosition( Adversario[2,0].spr , Adversario[2,0].x, Adversario[2,0].y)
			SetSpritePosition( Adversario[2,0].spr2 , Adversario[2,0].x - 160 , Adversario[2,0].y + 40 )
			
			SetSpriteVisible(Adversario[2,0].spr, FALSE)
			SetSpriteVisible(Adversario[2,0].spr2, FALSE)
			
			
			
			Adversario[3,0].estilo = 2		
			Adversario[3,0].estado = 3
			Adversario[3,0].vida = 100	
			Adversario[3,0].vivo = TRUE
			
			EstiloArqueiro = Adversario[3,0].estilo	
			EstiloArqueiro2 = Adversario[3,0].estado									
			
			EstiloArqueiros(EstiloArqueiroAtual)
				
			Adversario[3,0].spr =  CloneSprite (EstiloArqueiro)		
			Adversario[3,0].spr2 =  CloneSprite (EstiloArqueiro2)
			
						
			Adversario[3,0].x = LarguraTela - 350 - GetSpriteWidth(Adversario[3,0].spr)
			
			Adversario[3,0].y = 700
			
			SetSpritePosition( Adversario[3,0].spr , Adversario[3,0].x, Adversario[3,0].y)
			SetSpritePosition( Adversario[3,0].spr2 , Adversario[3,0].x - 160 , Adversario[3,0].y + 40)
			
			SetSpriteVisible(Adversario[3,0].spr, FALSE)
			SetSpriteVisible(Adversario[3,0].spr2, FALSE)
			
			
			
			Adversario[4,0].estilo = 2	
			Adversario[4,0].estado = 3	
			Adversario[4,0].vida = 100
			Adversario[4,0].vivo = TRUE
			
			EstiloArqueiro = Adversario[4,0].estilo
			EstiloArqueiro2 = Adversario[4,0].estado										
			
			EstiloArqueiros(EstiloArqueiroAtual)
				
			Adversario[4,0].spr =  CloneSprite (EstiloArqueiro)		
			Adversario[4,0].spr2 =  CloneSprite (EstiloArqueiro2)	
			
						
			Adversario[4,0].x = LarguraTela - 580 - GetSpriteWidth(Adversario[4,0].spr)
			
			Adversario[4,0].y = 470
			
			SetSpritePosition( Adversario[4,0].spr , Adversario[4,0].x, Adversario[4,0].y)
			SetSpritePosition( Adversario[4,0].spr2 , Adversario[4,0].x - 160 , Adversario[4,0].y + 40)
			
			SetSpriteVisible(Adversario[4,0].spr, FALSE)
			SetSpriteVisible(Adversario[4,0].spr2, FALSE)
			
	
	
endfunction