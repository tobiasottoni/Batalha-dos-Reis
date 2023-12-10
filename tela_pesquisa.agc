// File: tela_pesquisa.agc
// Created: 23-02-16



function IniciaTelaPesquisa()
	
	PlaySound(29,VolumeMusicasAtual,TRUE)
	PlaySound(8,100,FALSE)
		
	SetSpriteVisible(BgPesquisa, TRUE)
	
	
	SetSpritePosition(pesquisador,  1250, 200)	
	SetSpriteVisible(pesquisador, TRUE)
	
	SetVirtualButtonVisible(btnPesquisa1, TRUE) 
	SetVirtualButtonActive(btnPesquisa1, TRUE)	
		
	
	SetVirtualButtonVisible(btnPesquisaSair, TRUE) 
	SetVirtualButtonActive(btnPesquisaSair, TRUE)
	
	
	
	
endfunction



function FechaTelaPesquisa()
	
	StopSound(29)
	StopSound(8)
	
	SetSpriteVisible(BgPesquisa, FALSE)
	
	SetVirtualButtonVisible(btnPesquisa1, FALSE) 
	SetVirtualButtonActive(btnPesquisa1, FALSE)	
	
	SetVirtualButtonVisible(btnPesquisaSair, FALSE) 
	SetVirtualButtonActive(btnPesquisaSair, FALSE)
	
	SetSpriteVisible(pesquisador, FALSE)
	
	
endfunction