// File: inicializador.agc
// Created: 23-02-16

global LarguraTela as integer
global AlturaTela as integer
global spriteClicado as integer
global GameOver as integer
global LevelComplete as integer
global TRUE = 1
global FALSE = 0
global GameAtivo
global JogoPausado

function inicializador ()
	
	GameAtivo = TRUE
	TelaInicial = FALSE
	TravaSelecao = TRUE
	
	LarguraTela = 2400
	AlturaTela = 1080	
	
// Mostrar Todos os Erros

SetErrorMode(2)

// Ajustar as Propriedades da Janela
SetWindowTitle( "Batalha dos Reis" )
SetWindowAllowResize( 1 ) // Permite que a tela seja redimensionada

// Ajusta as propriedades de exibição
SetVirtualResolution( LarguraTela, AlturaTela )
SetOrientationAllowed( 0, 0, 1, 1 ) // Somente modo paisagem
SetScissor( 0,0,0,0 ) // usa o máximo da tela / sem bordas pretas.
UseNewDefaultFonts( 1 )
SetSyncRate( 20, 0 ) // fps e 0 para menor uso de cpu


LoadFont( 1,  "adlib.ttf" )

endfunction