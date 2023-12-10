// File: adversario_forte.agc
// Created: 23-02-16
Global ForteAdversario as integer
Global LevelForteAdversario as integer
Global EstadoForteAdversario as integer

function DefineForteAdversario()
	
	ForteAdversario = 22
	
	if(LevelForteAdversario = 1)
	
	
	if(EstadoForteAdversario = 1)
	
	ForcaExercitoCalculadoAdversario = ForcaExercitoCalculadoAdversario + 200
	
	ForteAdversario = CreateSprite (LoadImage("fortes/01/1.png"))
	
	SetSpriteSize(ForteAdversario,1000,850)
	
	SetSpritePosition(ForteAdversario, LarguraTela - GetSpriteWidth(ForteAdversario) + 200,AlturaTela - GetSpriteHeight(ForteAdversario))
	
	SetSpriteVisible(ForteAdversario, TRUE)
	
	endif
	
	
	if(EstadoForteAdversario = 2)
	
	ForcaExercitoCalculadoAdversario = ForcaExercitoCalculadoAdversario + 175
	
	ForteAdversario = CreateSprite (LoadImage("fortes/01/2.png"))
	
	SetSpriteSize(ForteAdversario,1000,850)
	
	SetSpritePosition(ForteAdversario, LarguraTela - GetSpriteWidth(ForteAdversario) + 200,AlturaTela - GetSpriteHeight(ForteAdversario))
	
	SetSpriteVisible(ForteAdversario, TRUE)
	
	endif
	
	
	if(EstadoForteAdversario = 3)
	
	
	ForcaExercitoCalculadoAdversario = ForcaExercitoCalculadoAdversario + 150
	
	
	ForteAdversario = CreateSprite (LoadImage("fortes/01/3.png"))
	
	SetSpriteSize(ForteAdversario,1000,850)
	
	SetSpritePosition(ForteAdversario, LarguraTela - GetSpriteWidth(ForteAdversario) + 200,AlturaTela - GetSpriteHeight(ForteAdversario))
	
	SetSpriteVisible(ForteAdversario, TRUE)
	
	endif
	
	
	if(EstadoForteAdversario = 4)
	
	ForcaExercitoCalculadoAdversario = ForcaExercitoCalculadoAdversario + 125
	
	ForteAdversario = CreateSprite (LoadImage("fortes/01/4.png"))
	
	SetSpriteSize(ForteAdversario,1000,850)
	
	SetSpritePosition(ForteAdversario, LarguraTela - GetSpriteWidth(ForteAdversario) + 200,AlturaTela - GetSpriteHeight(ForteAdversario))
	
	SetSpriteVisible(ForteAdversario, TRUE)
	
	endif
	
	
	endif
	
	
	if(LevelForteAdversario = 2)
	
	
	if(EstadoForteAdversario = 1)
	
		ForcaExercitoCalculadoAdversario = ForcaExercitoCalculadoAdversario + 300
	
	ForteAdversario = CreateSprite (LoadImage("fortes/02/1.png"))
	
	SetSpriteSize(ForteAdversario,1000,850)
	
	SetSpritePosition(ForteAdversario, LarguraTela - GetSpriteWidth(ForteAdversario) + 200,AlturaTela - GetSpriteHeight(ForteAdversario))
	
	SetSpriteVisible(ForteAdversario, TRUE)
	
	endif
	
	
	if(EstadoForteAdversario = 2)
	
		ForcaExercitoCalculadoAdversario = ForcaExercitoCalculadoAdversario + 275
	
	ForteAdversario = CreateSprite (LoadImage("fortes/02/2.png"))
	
	SetSpriteSize(ForteAdversario,1000,850)
	
	SetSpritePosition(ForteAdversario, LarguraTela - GetSpriteWidth(ForteAdversario) + 200,AlturaTela - GetSpriteHeight(ForteAdversario))
	
	SetSpriteVisible(ForteAdversario, TRUE)
	
	endif
	
	
	if(EstadoForteAdversario = 3)
	
		ForcaExercitoCalculadoAdversario = ForcaExercitoCalculadoAdversario + 250
	
	ForteAdversario = CreateSprite (LoadImage("fortes/02/3.png"))
	
	SetSpriteSize(ForteAdversario,1000,850)
	
	SetSpritePosition(ForteAdversario, LarguraTela - GetSpriteWidth(ForteAdversario) + 200,AlturaTela - GetSpriteHeight(ForteAdversario))
	
	SetSpriteVisible(ForteAdversario, TRUE)
	
	endif
	
	
	if(EstadoForteAdversario = 4)
	
		ForcaExercitoCalculadoAdversario = ForcaExercitoCalculadoAdversario +225
	
	ForteAdversario = CreateSprite (LoadImage("fortes/02/4.png"))
	
	SetSpriteSize(ForteAdversario,1000,850)
	
	SetSpritePosition(ForteAdversario, LarguraTela - GetSpriteWidth(ForteAdversario) + 200,AlturaTela - GetSpriteHeight(ForteAdversario))
	
	SetSpriteVisible(ForteAdversario, TRUE)
	
	endif
	
	
	endif
	
	
	if(LevelForteAdversario = 3)
	
		
	if(EstadoForteAdversario = 1)
	
		ForcaExercitoCalculadoAdversario = ForcaExercitoCalculadoAdversario + 400
	
	ForteAdversario = CreateSprite (LoadImage("fortes/03/1.png"))
	
	SetSpriteSize(ForteAdversario,1000,850)
	
	SetSpritePosition(ForteAdversario, LarguraTela - GetSpriteWidth(ForteAdversario) + 200,AlturaTela - GetSpriteHeight(ForteAdversario))
	
	SetSpriteVisible(ForteAdversario, TRUE)
	
	endif
	
	
	if(EstadoForteAdversario = 2)
	
		ForcaExercitoCalculadoAdversario = ForcaExercitoCalculadoAdversario + 375
	
	ForteAdversario = CreateSprite (LoadImage("fortes/03/2.png"))
	
	SetSpriteSize(ForteAdversario,1000,850)
	
	SetSpritePosition(ForteAdversario, LarguraTela - GetSpriteWidth(ForteAdversario) + 200,AlturaTela - GetSpriteHeight(ForteAdversario))
	
	SetSpriteVisible(ForteAdversario, TRUE)
	
	endif
	
	
	if(EstadoForteAdversario = 3)
	
		ForcaExercitoCalculadoAdversario = ForcaExercitoCalculadoAdversario + 350
	
	ForteAdversario = CreateSprite (LoadImage("fortes/03/3.png"))
	
	SetSpriteSize(ForteAdversario,1000,850)
	
	SetSpritePosition(ForteAdversario, LarguraTela - GetSpriteWidth(ForteAdversario) + 200,AlturaTela - GetSpriteHeight(ForteAdversario))
	
	SetSpriteVisible(ForteAdversario, TRUE)
	
	endif
	
	
	if(EstadoForteAdversario = 4)
	
		ForcaExercitoCalculadoAdversario = ForcaExercitoCalculadoAdversario + 325
	
	ForteAdversario = CreateSprite (LoadImage("fortes/03/4.png"))
	
	SetSpriteSize(ForteAdversario,1000,850)
	
	SetSpritePosition(ForteAdversario, LarguraTela - GetSpriteWidth(ForteAdversario) + 200,AlturaTela - GetSpriteHeight(ForteAdversario))
	
	SetSpriteVisible(ForteAdversario, TRUE)
	
	endif
	
	
	endif
	
	
	if(LevelForteAdversario = 4)
	
	
	if(EstadoForteAdversario = 1)
	
		ForcaExercitoCalculadoAdversario = ForcaExercitoCalculadoAdversario + 500
	
	ForteAdversario = CreateSprite (LoadImage("fortes/04/1.png"))
	
	SetSpriteSize(ForteAdversario,1000,850)
	
	SetSpritePosition(ForteAdversario, LarguraTela - GetSpriteWidth(ForteAdversario) + 200,AlturaTela - GetSpriteHeight(ForteAdversario))
	
	SetSpriteVisible(ForteAdversario, TRUE)
	
	endif
	
	
	if(EstadoForteAdversario = 2)
	
		ForcaExercitoCalculadoAdversario = ForcaExercitoCalculadoAdversario + 475
	
	ForteAdversario = CreateSprite (LoadImage("fortes/04/2.png"))
	
	SetSpriteSize(ForteAdversario,1000,850)
	
	SetSpritePosition(ForteAdversario, LarguraTela - GetSpriteWidth(ForteAdversario) + 200,AlturaTela - GetSpriteHeight(ForteAdversario))
	
	SetSpriteVisible(ForteAdversario, TRUE)
	
	endif
	
	
	if(EstadoForteAdversario = 3)
	
		ForcaExercitoCalculadoAdversario = ForcaExercitoCalculadoAdversario + 450
	
	ForteAdversario = CreateSprite (LoadImage("fortes/04/3.png"))
	
	SetSpriteSize(ForteAdversario,1000,850)
	
	SetSpritePosition(ForteAdversario, LarguraTela - GetSpriteWidth(ForteAdversario) + 200,AlturaTela - GetSpriteHeight(ForteAdversario))
	
	SetSpriteVisible(ForteAdversario, TRUE)
	
	endif
	
	
	if(EstadoForteAdversario = 4)
	
		ForcaExercitoCalculadoAdversario = ForcaExercitoCalculadoAdversario + 425
	
	ForteAdversario = CreateSprite (LoadImage("fortes/04/4.png"))
	
	SetSpriteSize(ForteAdversario,1000,850)
	
	SetSpritePosition(ForteAdversario, LarguraTela - GetSpriteWidth(ForteAdversario) + 200,AlturaTela - GetSpriteHeight(ForteAdversario))
	
	SetSpriteVisible(ForteAdversario, TRUE)
	
	endif
	
	
	endif
	
endfunction
