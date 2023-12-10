// File: efeitos_visuais.agc
// Created: 23-02-16

global fogo as integer
global fogo2 as integer
Global Sangue as integer

function Criafogo()
	
	/*
	
	fogo = 61
	
	DeleteSprite (fogo)	
	
	CreateSprite (fogo, 0 )
		
	SetSpriteSize(fogo,100,130)
		
		AddSpriteAnimationFrame ( fogo, LoadImage ( "efeitosvisuais/fogo/1.png" ))
		AddSpriteAnimationFrame ( fogo, LoadImage ( "efeitosvisuais/fogo/2.png" ))
		AddSpriteAnimationFrame ( fogo, LoadImage ( "efeitosvisuais/fogo/3.png" ))
		AddSpriteAnimationFrame ( fogo, LoadImage ( "efeitosvisuais/fogo/4.png" ))
		AddSpriteAnimationFrame ( fogo, LoadImage ( "efeitosvisuais/fogo/5.png" ))
		AddSpriteAnimationFrame ( fogo, LoadImage ( "efeitosvisuais/fogo/6.png" ))
		AddSpriteAnimationFrame ( fogo, LoadImage ( "efeitosvisuais/fogo/7.png" ))
				
	
	PlaySprite ( fogo, 2, 1, 1, 10 )
	
	fogo2 = CloneSprite(fogo)
	
	SetSpritePosition(fogo, 790, 360)
	
	SetSpritePosition(fogo2, 1640, 360)
	
	SetSpriteVisible(fogo, FALSE)
	SetSpriteVisible(fogo2, FALSE)
	
	SetSpriteDepth(fogo, 999)
	SetSpriteDepth(fogo2, 999)
	
	*/
	
endfunction

function IniciaSangue()
	
	Sangue = 51
	
	CreateSprite (Sangue, 0 )
		
	SetSpriteSize(Sangue,255,255)
		
		AddSpriteAnimationFrame ( Sangue, LoadImage ( "sangue/1.png" ))
		AddSpriteAnimationFrame ( Sangue, LoadImage ( "sangue/2.png" ))
		AddSpriteAnimationFrame ( Sangue, LoadImage ( "sangue/3.png" ))
		AddSpriteAnimationFrame ( Sangue, LoadImage ( "sangue/4.png" ))
		AddSpriteAnimationFrame ( Sangue, LoadImage ( "sangue/5.png" ))
		AddSpriteAnimationFrame ( Sangue, LoadImage ( "sangue/6.png" ))
		AddSpriteAnimationFrame ( Sangue, LoadImage ( "sangue/7.png" ))
				
	
	PlaySprite ( Sangue, 5, 1, 1, 10 )
	
	SetSpriteVisible(Sangue, FALSE)
	
	SetSpriteDepth(Sangue, 1)
	
endfunction