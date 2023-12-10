// Project: Batalha dos Reis 
// Created: 23-02-16

#include "inicializador.agc"
#include "contador_de_tempo.agc"
#include "efeitos_sonoros.agc"
#include "musicas.agc"
#include "dados_do_jogador.agc"
#include "cadastro.agc"

#include "botoes.agc"
#include "botoes_acoes.agc"
#include "cliques_acoes.agc"

#include "logo_dechinelo.agc"
#include "personagens_telas.agc"
#include "efeitos_visuais.agc"

#include "arqueiros_estilo.agc"

#include "player_exercito.agc"
#include "player_forte.agc"
#include "player_tiros.agc"

#include "adversario_exercito.agc"
#include "adversario_forte.agc"
#include "adversario_tiros.agc"

#include "campo_de_batalha.agc"
#include "jogo_verifica_vitoria.agc"
#include "bg_telas_criador.agc"

#include "tela_inicial.agc"

#include "tela_mapa.agc"
#include "tela_treinamento.agc"
#include "tela_armas.agc"
#include "tela_construcoes.agc"
#include "tela_descansar.agc"
#include "tela_pesquisa.agc"
#include "tela_igreja.agc"
#include "tela_seureino.agc"





inicializador ()
MostraLogo()
VolumeMusicas()

EfeitosSonoros()
Musicas()
CriaBotoes()


do
	ContadordeTempo()
	DispensaLogo()	
	EntradasdoUsuario()
	
	
	
	if CadastroEmCurso = TRUE
				
		if GetTextInputCompleted ( ) = 1
				        
        nomeJogador = GetTextInput ( ) 
        
        AtualizaNomeJogador()
        
        MostraNomeCadastro() 
        
        CadastroEmCurso = TRUE               
       
                                  
        endif    
		
	endif
	
	
	
	/*
	
	if ( GetPointerPressed ( ) = 1 )
        
        //spriteClicado = GetSpriteHit ( GetPointerX ( ), GetPointerY ( ) )
        
        //VerificaCliques(spriteClicado)
        	  
         
        GetSpriteHit ( GetPointerX ( ), GetPointerY ( ) )     	
        
        Print(GetPointerX ( ))
        Print (GetPointerY ( ))        
        
        
    endif
    
    */
    
	
		
	
	if GuerraEmCurso = TRUE
	
	AtualizaFlechasPlayer()
	ChecaStatusFlechasPlayer()
	AtualizaFlechasAdversario()
	ChecaStatusFlechasAdversario()	
	RetornaSpriteOriginalPlayer()
	RetornaSpriteOriginalAdversario()
	MataPlayer()
	MataAdversario()
	//ChecaVitoria()
	RetornaEstadoSprite()
	
	
	/*
	
	if ( GetPointerPressed ( ) = 1 )
        
        //spriteClicado = GetSpriteHit ( GetPointerX ( ), GetPointerY ( ) )
        
        //VerificaCliques(spriteClicado)
        	
        	 PlayerAtira()
         AdversarioAtira()        	
        
        //Print(GetPointerX ( ))
        //Print (GetPointerY ( ))        
        
        
    endif
    
  
    */
    
    /*
    
    		
    Print(Player[0,0].vida)
    Print(Player[1,0].vida)
    Print(Player[2,0].vida)
    Print(Player[3,0].vida)
    Print(Player[4,0].vida)
    
    Print(Adversario[0,0].vida)
    Print(Adversario[1,0].vida)
    Print(Adversario[2,0].vida)
    Print(Adversario[3,0].vida)
    Print(Adversario[4,0].vida)
    
    */	
    
    
    endif
    
    
    //Print(Tempo)
    //Print(NovoTempo)
    //Print(TempoTiro)
    //Print(TempoDuracaoFlechaPlayer)
    //Print(TempoDuracaoFlechaAdversario)
    //Print(LevelForteSalvo)
    //Print(EstadoForteSalvo)
    //Print(TipoArqueirosSalvo)
    //Print(TipoArqueiros)
    //Print(ForcaExercitoSalvo)
    //Print(ForcaExercito)
    //Print(TotalFlechasSalvo)
    
    //Print(DanoExercitoCalculadoPlayer)
    //Print(VelocidadeFlechaCalculadaPlayer)
   
   
    //Print(DanoExercitoCalculadoAdversario)
    //Print(VelocidadeFlechaCalculadaAdversario)
	
	
	
    Sync()
loop
