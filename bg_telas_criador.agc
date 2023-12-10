// File: bg_telas_criador.agc
// Created: 23-02-16

Global BgTreinamento as integer
Global BgSeuReino as integer
Global BgPesquisa as integer
Global BgMapa as integer
Global BgMenu
Global BgIgreja as integer
Global BgDescansar as integer
Global BgConstrucoes as integer
Global BgArmas as integer


function CriaBGTelas()
	
	BgMenu = 41
	
	BgMenu = CreateSprite(LoadImage("imgshome/bgmenu.png"))
SetSpriteSize(BgMenu, LarguraTela, AlturaTela)
SetSpriteDepth (BgMenu, 999)
SetSpriteVisible(BgMenu,FALSE)

BgTreinamento = 42

BgTreinamento = CreateSprite(LoadImage("telas/treinamento/bg_treinamento.png"))
SetSpriteSize(BgTreinamento, LarguraTela, AlturaTela)
SetSpriteDepth (BgTreinamento, 999)
SetSpriteVisible(BgTreinamento,FALSE)

BgSeuReino = 43

BgSeuReino = CreateSprite(LoadImage("telas/seureino/bg_seureino.png"))
SetSpriteSize(BgSeuReino, LarguraTela, AlturaTela)
SetSpriteDepth (BgSeuReino, 999)
SetSpriteVisible(BgSeuReino,FALSE)


BgPesquisa = 44

BgPesquisa = CreateSprite(LoadImage("telas/pesquisa/bg_pesquisa.png"))
SetSpriteSize(BgPesquisa, LarguraTela, AlturaTela)
SetSpriteDepth (BgPesquisa, 999)
SetSpriteVisible(BgPesquisa,FALSE)


BgMapa = 45

BgMapa = CreateSprite(LoadImage("telas/mapa/bg_mapa.png"))
SetSpriteSize(BgMapa, LarguraTela, AlturaTela)
SetSpriteDepth (BgMapa, 999)
SetSpriteVisible(BgMapa,FALSE)

BgIgreja = 46

BgIgreja = CreateSprite(LoadImage("telas/igreja/bg_igreja.png"))
SetSpriteSize(BgIgreja, LarguraTela, AlturaTela)
SetSpriteDepth (BgIgreja, 999)
SetSpriteVisible(BgIgreja,FALSE)

BgDescansar = 47

BgDescansar = CreateSprite(LoadImage("telas/descansar/bg_descansar.png"))
SetSpriteSize(BgDescansar, LarguraTela, AlturaTela)
SetSpriteDepth (BgDescansar, 999)
SetSpriteVisible(BgDescansar,FALSE)

BgConstrucoes = 48

BgConstrucoes = CreateSprite(LoadImage("telas/construcoes/bg_construcoes.png"))
SetSpriteSize(BgConstrucoes, LarguraTela, AlturaTela)
SetSpriteDepth (BgConstrucoes, 999)
SetSpriteVisible(BgConstrucoes,FALSE)

BgArmas = 49

BgArmas = CreateSprite(LoadImage("telas/armas/bg_armas.png"))
SetSpriteSize(BgArmas, LarguraTela, AlturaTela)
SetSpriteDepth (BgArmas, 999)
SetSpriteVisible(BgArmas,FALSE)

	
endfunction