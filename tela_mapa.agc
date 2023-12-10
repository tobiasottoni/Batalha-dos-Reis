// File: tela_mapa.agc
// Created: 23-02-16


Global TxtNome as integer
Global TxtDinheiro as integer
Global TxtLevelForte as integer
Global TxtTotalFlechas as integer
Global TxtTotalArqueiros as integer
Global TxtForcaExercito as integer
Global TxtFavorDivino as integer
Global TxtEnergia as integer


function IniciaTelaMapa()
	
	
	SetSpriteVisible(conselheiroPeq, FALSE)
	
	PlaySound(24,VolumeMusicasAtual,TRUE)
	
	SetSpriteVisible(BgMapa, TRUE)
	
	IniciaDadosJogador()
	
	PegaLevelForte()
	
	PegaEstadoForte()
		
	LevelFortePlayer = LevelForteSalvo
	
	EstadoFortePlayer = EstadoForteSalvo
	
	DefineFortePlayer()
	
			
	
	
	SetVirtualButtonVisible(btnArmas, TRUE)
	SetVirtualButtonActive(btnArmas, TRUE)
	
	SetVirtualButtonVisible(btnConstrucoes, TRUE)
	SetVirtualButtonActive(btnConstrucoes, TRUE)
	
	SetVirtualButtonVisible(btnDescansar, TRUE)
	SetVirtualButtonActive(btnDescansar, TRUE)
	
	SetVirtualButtonVisible(btnGuerra, TRUE)
	SetVirtualButtonActive(btnGuerra, TRUE)
	
	SetVirtualButtonVisible(btnIgreja, TRUE)
	SetVirtualButtonActive(btnIgreja, TRUE)
	
	SetVirtualButtonVisible(btnPesquisa, TRUE)
	SetVirtualButtonActive(btnPesquisa, TRUE)
		
	SetVirtualButtonVisible(btnSeuReino, TRUE)
	SetVirtualButtonActive(btnSeuReino, TRUE)
	
	SetVirtualButtonVisible(btnTreinamento, TRUE)
	SetVirtualButtonActive(btnTreinamento, TRUE)
	
	
	TxtNome = 21 
	
	
	CreateText(TxtNome,  NomeSalvo)
    SetTextPosition(TxtNome, 103, 190)    
    SetTextDepth(TxtNome, 1)    
    SetTextSize(TxtNome, 60)
    SetTextColor(TxtNome,0 ,0 ,0, 1000)
    SetTextDepth(TxtNome, 1)
    SetTextBold(TxtNome, TRUE)
    SetTextFont(TxtNome,1)
    
    TxtDinheiro = 22
	
	
	CreateText(TxtDinheiro,str(DinheiroSalvo))
    SetTextPosition(TxtDinheiro, 103, 300)    
    SetTextDepth(TxtDinheiro, 1)    
    SetTextSize(TxtDinheiro, 60)    
    SetTextColor(TxtDinheiro,0 ,0 ,0, 1000)
    SetTextDepth(TxtDinheiro, 1)
    SetTextBold(TxtDinheiro, TRUE)
    SetTextFont(TxtDinheiro,1)
    
    TxtLevelForte = 23
	
	
	CreateText(TxtLevelForte, str(LevelForteSalvo))
    SetTextPosition(TxtLevelForte, 103, 410)    
    SetTextDepth(TxtLevelForte, 1)    
    SetTextSize(TxtLevelForte, 60)    
    SetTextColor(TxtLevelForte,0 ,0 ,0, 1000)
    SetTextDepth(TxtLevelForte, 1)
    SetTextBold(TxtLevelForte, TRUE)
    SetTextFont(TxtLevelForte,1)
    
    
    TxtTotalFlechas = 24
	
	
	CreateText(TxtTotalFlechas,str(TotalFlechasSalvo))
    SetTextPosition(TxtTotalFlechas, 103, 520)    
    SetTextDepth(TxtTotalFlechas, 1)    
    SetTextSize(TxtTotalFlechas, 60)    
    SetTextColor(TxtTotalFlechas,0 ,0 ,0, 1000)
    SetTextDepth(TxtTotalFlechas, 1)
    SetTextBold(TxtTotalFlechas, TRUE)
    SetTextFont(TxtTotalFlechas,1)
    
    
    TxtTotalArqueiros = 26
	
	
	CreateText(TxtTotalArqueiros, str(TotalArqueirosSalvo))
    SetTextPosition(TxtTotalArqueiros, 103, 630)    
    SetTextDepth(TxtTotalArqueiros, 1)    
    SetTextSize(TxtTotalArqueiros, 60)    
    SetTextColor(TxtTotalArqueiros,0 ,0 ,0, 1000)
    SetTextDepth(TxtTotalArqueiros, 1)
    SetTextBold(TxtTotalArqueiros, TRUE)
    SetTextFont(TxtTotalArqueiros,1)
    
    
    
    TxtForcaExercito = 27
	
	
	CreateText(TxtForcaExercito, str(ForcaExercitoSalvo))
    SetTextPosition(TxtForcaExercito, 103, 740)    
    SetTextDepth(TxtForcaExercito, 1)    
    SetTextSize(TxtForcaExercito, 60)    
    SetTextColor(TxtForcaExercito,0 ,0 ,0, 1000)
    SetTextDepth(TxtForcaExercito, 1)
    SetTextBold(TxtForcaExercito, TRUE)
    SetTextFont(TxtForcaExercito,1)
    
    
    TxtFavorDivino = 28
	
	
	CreateText(TxtFavorDivino, str(FavorDivinoSalvo))
    SetTextPosition(TxtFavorDivino, 103, 850)    
    SetTextDepth(TxtFavorDivino, 1)    
    SetTextSize(TxtFavorDivino, 60)
    SetTextColor(TxtFavorDivino,0 ,0 ,0, 1000)
    SetTextDepth(TxtFavorDivino, 1)
    SetTextBold(TxtFavorDivino, TRUE)
    SetTextFont(TxtFavorDivino,1)
    
    
    TxtEnergia = 29
	
	
	CreateText(TxtEnergia,str(EnergiaSalvo))
    SetTextPosition(TxtEnergia, 103, 950)    
    SetTextDepth(TxtEnergia, 1)    
    SetTextSize(TxtEnergia, 60)
    SetTextColor(TxtEnergia,0 ,0 ,0, 1000)
    SetTextDepth(TxtEnergia, 1)
    SetTextBold(TxtEnergia, TRUE)
    SetTextFont(TxtEnergia,1)
	
endfunction


function FechaTelaMapa()
	
	StopSound(24)
	StopSound(13)
	
		SetSpriteVisible(BgMapa, FALSE)
	
		DeleteText(TxtNome)
		DeleteText(TxtDinheiro)
		DeleteText(TxtLevelForte)
		DeleteText(TxtTotalArqueiros)
		DeleteText(TxtTotalFlechas)
		DeleteText(TxtForcaExercito)
		DeleteText(TxtFavorDivino)
		DeleteText(TxtEnergia)
	
	
endfunction