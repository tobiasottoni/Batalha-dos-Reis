// File: cadastro.agc
// Created: 23-02-16

Global nomeJogador as string
Global ExibeNomeJogador as integer
Global BgCadastrar as integer
Global CadastroEmCurso as integer

function PedeCadastro()
	
	BgCadastrar = 41
	
	BgCadastrar = CreateSprite(LoadImage("telas/cadastro/bg_cadastro.png"))
	SetSpriteSize(BgCadastrar, LarguraTela, AlturaTela)
	SetSpriteDepth (BgCadastrar, 999)
	SetSpriteVisible(BgCadastrar, TRUE)
	
	
	ExibeNomeJogador = 1
    
    CreateText(ExibeNomeJogador,'')
    SetTextPosition(ExibeNomeJogador, 900, 350)    
    SetTextDepth(ExibeNomeJogador, 1)    
    SetTextSize(ExibeNomeJogador, 100)
    
	        
    	
	StartTextInput ('Seu Nome no Jogo?')
	
	
	CadastroEmCurso = TRUE   
    
    
    	
	SetVirtualButtonVisible(btnSexo1, TRUE) 
	SetVirtualButtonActive(btnSexo1, TRUE)
	
	SetVirtualButtonVisible(btnSexo2, TRUE) 
	SetVirtualButtonActive(btnSexo2, TRUE)
	
	
	SetVirtualButtonVisible(btnCadastrar, TRUE) 
	SetVirtualButtonActive(btnCadastrar, TRUE)

endfunction


function MostraNomeCadastro()
	
OpenToRead ( 1, "ns.dat")	
		Nome = ReadString (1)
	CloseFile(1)	
	
	NomeSalvo = Nome
			
	SetTextString(ExibeNomeJogador, NomeSalvo)
    	SetTextVisible(ExibeNomeJogador, TRUE)
	
endfunction


function FechaTelaCadastro()
	
	DeleteSprite(BgCadastrar)
	
	SetTextVisible(ExibeNomeJogador, FALSE)
	

	SetVirtualButtonVisible(btnSexo1, FALSE) 
	SetVirtualButtonActive(btnSexo1, FALSE)
	
	SetVirtualButtonVisible(btnSexo2, FALSE) 
	SetVirtualButtonActive(btnSexo2, FALSE)
		
	SetVirtualButtonVisible(btnCadastrar, FALSE) 
	SetVirtualButtonActive(btnCadastrar, FALSE)
	
	IniciaDadosJogador()
	
	TeladeInicio()	
	
endfunction