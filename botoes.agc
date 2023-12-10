// File: botoes.agc
// Created: 23-02-16

global tamanhobotao as integer
global btnJogar as integer
global btnSair as integer
global btnSexo1 as integer
global btnSexo2 as integer
global btnCadastrar as integer
global btnArmas as integer
global btnConstrucoes as integer
global btnDescansar as integer
global btnGuerra as integer
global btnIgreja as integer
global btnPesquisa as integer
global btnSeuReino as integer
global btnTreinamento as integer
global btnTreinamento1 as integer
global btnTreinamento2 as integer
global btnTreinamento3 as integer
global btnTreinamento4 as integer
global btnTreinamento5 as integer
global btnTreinamento6 as integer
global btnTreinamento7 as integer
global btnTreinamento8 as integer
global btnTreinamento9 as integer
global btnTreinamentoSair as integer
global btnGuerra1 as integer
global btnSairGuerra as integer
global btnArmas1 as integer
global btnArmas2 as integer
global btnArmas3 as integer
global btnArmas4 as integer
global btnArmas5 as integer
global btnArmas6 as integer
global btnArmas7 as integer
global btnArmasSair as integer
global btnConstrucoes1 as integer
global btnConstrucoes2 as integer
global btnConstrucoes3 as integer
global btnConstrucoes4 as integer
global btnConstrucoesSair as integer
global btnDescansar1 as integer
global btnDescansarSair as integer
global btnPesquisa1 as integer
global btnPesquisaSair as integer
global btnIgreja1 as integer
global btnIgrejaSair as integer
global btnSeuReino1 as integer
global btnSeuReinoSair as integer


function CriaBotoes()
	
	tamanhobotao = LarguraTela / 6
	
	btnJogar = 1
	
	AddVirtualButton(btnJogar, 300, 150, tamanhobotao)
	SetVirtualButtonImageUp(btnJogar,LoadImage("imgshome/btn_jogar.png"))
	SetVirtualButtonImageDown(btnJogar,LoadImage("imgshome/btn_jogarb.png"))
	SetVirtualButtonVisible(btnJogar, FALSE) 
	SetVirtualButtonActive(btnJogar, FALSE)
		
	btnSair = 2
	
	AddVirtualButton(btnSair, 300, 350, tamanhobotao)
	SetVirtualButtonImageUp(btnSair,LoadImage("imgshome/btn_sair.png"))
	SetVirtualButtonImageDown(btnSair,LoadImage("imgshome/btn_sairb.png"))
	SetVirtualButtonVisible(btnSair, FALSE) 
	SetVirtualButtonActive(btnSair, FALSE)
	
	
	btnSexo1 = 3
	
	AddVirtualButton(btnSexo1, 900, 600, tamanhobotao / 2)
	SetVirtualButtonImageUp(btnSexo1,LoadImage("telas/cadastro/btn_sexo1.png"))
	SetVirtualButtonImageDown(btnSexo1,LoadImage("telas/cadastro/btn_sexo1b.png"))
	SetVirtualButtonVisible(btnSexo1, FALSE) 
	SetVirtualButtonActive(btnSexo1, FALSE)
	
	btnSexo2 = 4
	
	AddVirtualButton(btnSexo2, 1400, 600, tamanhobotao / 2)
	SetVirtualButtonImageUp(btnSexo2,LoadImage("telas/cadastro/btn_sexo2.png"))
	SetVirtualButtonImageDown(btnSexo2,LoadImage("telas/cadastro/btn_sexo2b.png"))
	SetVirtualButtonVisible(btnSexo2, FALSE) 
	SetVirtualButtonActive(btnSexo2, FALSE)
	
	
	btnCadastrar = 5
	
	AddVirtualButton(btnCadastrar, LarguraTela / 2 - 50, AlturaTela - 100, tamanhobotao)		
	SetVirtualButtonImageUp(btnCadastrar,LoadImage("telas/cadastro/btn_cadastrar.png"))
	SetVirtualButtonImageDown(btnCadastrar,LoadImage("telas/cadastro/btn_cadastrarb.png"))
	SetVirtualButtonVisible(btnCadastrar, FALSE) 
	SetVirtualButtonActive(btnCadastrar, FALSE)
	
	btnArmas = 6
	
	AddVirtualButton(btnArmas, 600, 140, tamanhobotao)		
	SetVirtualButtonImageUp(btnArmas,LoadImage("telas/mapa/botoes/btn_armas.png"))
	SetVirtualButtonImageDown(btnArmas,LoadImage("telas/mapa/botoes/btn_armas.png"))
	SetVirtualButtonVisible(btnArmas, FALSE) 
	SetVirtualButtonActive(btnArmas, FALSE)
	
	
	btnConstrucoes = 7
	
	AddVirtualButton(btnConstrucoes, 600, 430, tamanhobotao)		
	SetVirtualButtonImageUp(btnConstrucoes,LoadImage("telas/mapa/botoes/btn_construcoes.png"))
	SetVirtualButtonImageDown(btnConstrucoes,LoadImage("telas/mapa/botoes/btn_construcoes.png"))
	SetVirtualButtonVisible(btnConstrucoes, FALSE) 
	SetVirtualButtonActive(btnConstrucoes, FALSE)
	
	
	btnDescansar = 8  
	
	AddVirtualButton(btnDescansar, 1000, 826, tamanhobotao)		
	SetVirtualButtonImageUp(btnDescansar,LoadImage("telas/mapa/botoes/btn_descansar.png"))
	SetVirtualButtonImageDown(btnDescansar,LoadImage("telas/mapa/botoes/btn_descansar.png"))
	SetVirtualButtonVisible(btnDescansar, FALSE) 
	SetVirtualButtonActive(btnDescansar, FALSE)
	
	btnGuerra =  9
	
	AddVirtualButton(btnGuerra, 2060, 170, tamanhobotao)		
	SetVirtualButtonImageUp(btnGuerra,LoadImage("telas/mapa/botoes/btn_guerra.png"))
	SetVirtualButtonImageDown(btnGuerra,LoadImage("telas/mapa/botoes/btn_guerra.png"))
	SetVirtualButtonVisible(btnGuerra, FALSE) 
	SetVirtualButtonActive(btnguerra, FALSE)
	
	
	btnIgreja = 10
	
	AddVirtualButton(btnIgreja, 1350, 370, tamanhobotao)		
	SetVirtualButtonImageUp(btnIgreja,LoadImage("telas/mapa/botoes/btn_igreja.png"))
	SetVirtualButtonImageDown(btnIgreja,LoadImage("telas/mapa/botoes/btn_igreja.png"))
	SetVirtualButtonVisible(btnIgreja, FALSE) 
	SetVirtualButtonActive(btnIgreja, FALSE)
	
	
	btnPesquisa = 11
	
	AddVirtualButton(btnPesquisa, 1800, 520, tamanhobotao)		
	SetVirtualButtonImageUp(btnPesquisa,LoadImage("telas/mapa/botoes/btn_pesquisa.png"))
	SetVirtualButtonImageDown(btnPesquisa,LoadImage("telas/mapa/botoes/btn_pesquisa.png"))
	SetVirtualButtonVisible(btnPesquisa, FALSE) 
	SetVirtualButtonActive(btnPesquisa, FALSE)
	
	
	btnSeuReino = 12
	
	AddVirtualButton(btnSeuReino, 2200, 375, tamanhobotao - 50)		
	SetVirtualButtonImageUp(btnSeuReino,LoadImage("telas/mapa/botoes/btn_seureino.png"))
	SetVirtualButtonImageDown(btnSeuReino,LoadImage("telas/mapa/botoes/btn_seureino.png"))
	SetVirtualButtonVisible(btnSeuReino, FALSE) 
	SetVirtualButtonActive(btnSeuReino, FALSE)
	
	btnTreinamento = 13 
	
	AddVirtualButton(btnTreinamento, 1250, 120, tamanhobotao)		
	SetVirtualButtonImageUp(btnTreinamento,LoadImage("telas/mapa/botoes/btn_treinamento.png"))
	SetVirtualButtonImageDown(btnTreinamento,LoadImage("telas/mapa/botoes/btn_treinamento.png"))
	SetVirtualButtonVisible(btnTreinamento, FALSE) 
	SetVirtualButtonActive(btnTreinamento, FALSE)
	
	
	btnTreinamento1 =  14
	
	AddVirtualButton(btnTreinamento1, 1300, 150, tamanhobotao - 160)		
	SetVirtualButtonImageUp(btnTreinamento1,LoadImage("telas/treinamento/botoes/1.png"))
	SetVirtualButtonImageDown(btnTreinamento1,LoadImage("telas/treinamento/botoes/1b.png"))
	SetVirtualButtonVisible(btnTreinamento1, FALSE) 
	SetVirtualButtonActive(btnTreinamento1, FALSE)
	
	
	btnTreinamento2 =  15
	
	AddVirtualButton(btnTreinamento2, 1600, 150, tamanhobotao - 160)		
	SetVirtualButtonImageUp(btnTreinamento2,LoadImage("telas/treinamento/botoes/2.png"))
	SetVirtualButtonImageDown(btnTreinamento2,LoadImage("telas/treinamento/botoes/2b.png"))
	SetVirtualButtonVisible(btnTreinamento2, FALSE) 
	SetVirtualButtonActive(btnTreinamento2, FALSE)
	
	
	btnTreinamento3 =  16
	
	AddVirtualButton(btnTreinamento3, 1900, 150, tamanhobotao - 160)		
	SetVirtualButtonImageUp(btnTreinamento3,LoadImage("telas/treinamento/botoes/3.png"))
	SetVirtualButtonImageDown(btnTreinamento3,LoadImage("telas/treinamento/botoes/3b.png"))
	SetVirtualButtonVisible(btnTreinamento3, FALSE) 
	SetVirtualButtonActive(btnTreinamento3, FALSE)
	
	
	btnTreinamento4 = 17 
	
	AddVirtualButton(btnTreinamento4, 1300, 450, tamanhobotao - 160)		
	SetVirtualButtonImageUp(btnTreinamento4,LoadImage("telas/treinamento/botoes/4.png"))
	SetVirtualButtonImageDown(btnTreinamento4,LoadImage("telas/treinamento/botoes/4b.png"))
	SetVirtualButtonVisible(btnTreinamento4, FALSE) 
	SetVirtualButtonActive(btnTreinamento4, FALSE)
	
	btnTreinamento5 = 18 
	
	AddVirtualButton(btnTreinamento5, 1600, 450, tamanhobotao - 160)		
	SetVirtualButtonImageUp(btnTreinamento5,LoadImage("telas/treinamento/botoes/5.png"))
	SetVirtualButtonImageDown(btnTreinamento5,LoadImage("telas/treinamento/botoes/5b.png"))
	SetVirtualButtonVisible(btnTreinamento5, FALSE) 
	SetVirtualButtonActive(btnTreinamento5, FALSE)
	
	btnTreinamento6 = 19 
	
	AddVirtualButton(btnTreinamento6, 1900, 450, tamanhobotao - 160)		
	SetVirtualButtonImageUp(btnTreinamento6,LoadImage("telas/treinamento/botoes/6.png"))
	SetVirtualButtonImageDown(btnTreinamento6,LoadImage("telas/treinamento/botoes/6b.png"))
	SetVirtualButtonVisible(btnTreinamento6, FALSE) 
	SetVirtualButtonActive(btnTreinamento6, FALSE)
	
	btnTreinamento7 =  20
	
	AddVirtualButton(btnTreinamento7, 1000, 750, tamanhobotao - 160)		
	SetVirtualButtonImageUp(btnTreinamento7,LoadImage("telas/treinamento/botoes/7.png"))
	SetVirtualButtonImageDown(btnTreinamento7,LoadImage("telas/treinamento/botoes/7b.png"))
	SetVirtualButtonVisible(btnTreinamento7, FALSE) 
	SetVirtualButtonActive(btnTreinamento7, FALSE)
	
	btnTreinamento8 = 21 
	
	AddVirtualButton(btnTreinamento8, 1300, 750, tamanhobotao - 160)		
	SetVirtualButtonImageUp(btnTreinamento8,LoadImage("telas/treinamento/botoes/8.png"))
	SetVirtualButtonImageDown(btnTreinamento8,LoadImage("telas/treinamento/botoes/8b.png"))
	SetVirtualButtonVisible(btnTreinamento8, FALSE) 
	SetVirtualButtonActive(btnTreinamento8, FALSE)
	
	btnTreinamento9 =  22
	
	AddVirtualButton(btnTreinamento9, 1600, 750, tamanhobotao - 160)		
	SetVirtualButtonImageUp(btnTreinamento9,LoadImage("telas/treinamento/botoes/9.png"))
	SetVirtualButtonImageDown(btnTreinamento9,LoadImage("telas/treinamento/botoes/9b.png"))
	SetVirtualButtonVisible(btnTreinamento9, FALSE) 
	SetVirtualButtonActive(btnTreinamento9, FALSE)
	
	btnTreinamentoSair = 23  
	
	AddVirtualButton(btnTreinamentoSair, 2200, 100, tamanhobotao - 300)		
	SetVirtualButtonImageUp(btnTreinamentoSair,LoadImage("telas/treinamento/botoes/sair.png"))
	SetVirtualButtonImageDown(btnTreinamentoSair,LoadImage("telas/treinamento/botoes/sair.png"))
	SetVirtualButtonVisible(btnTreinamentoSair, FALSE) 
	SetVirtualButtonActive(btnTreinamentoSair, FALSE)
	
	btnGuerra1 = 24  
	
	AddVirtualButton(btnGuerra1, 2200, 880, tamanhobotao - 200)		
	SetVirtualButtonImageUp(btnGuerra1,LoadImage("campodeguerra/botoes/1.png"))
	SetVirtualButtonImageDown(btnGuerra1,LoadImage("campodeguerra/botoes/1.png"))
	SetVirtualButtonVisible(btnGuerra1, FALSE) 
	SetVirtualButtonActive(btnGuerra1, FALSE)
	
	btnArmas1 = 25  
	
	AddVirtualButton(btnArmas1, 200, 880, tamanhobotao - 200)		
	SetVirtualButtonImageUp(btnArmas1,LoadImage("telas/armas/botoes/1.png"))
	SetVirtualButtonImageDown(btnArmas1,LoadImage("telas/armas/botoes/1b.png"))
	SetVirtualButtonVisible(btnArmas1, FALSE) 
	SetVirtualButtonActive(btnArmas1, FALSE)
	
	btnArmas2 = 26  
	
	AddVirtualButton(btnArmas2, 450, 880, tamanhobotao - 200)		
	SetVirtualButtonImageUp(btnArmas2,LoadImage("telas/armas/botoes/2.png"))
	SetVirtualButtonImageDown(btnArmas2,LoadImage("telas/armas/botoes/2b.png"))
	SetVirtualButtonVisible(btnArmas2, FALSE) 
	SetVirtualButtonActive(btnArmas2, FALSE)
	
	btnArmas3 = 27  
	
	AddVirtualButton(btnArmas3, 700, 880, tamanhobotao - 200)		
	SetVirtualButtonImageUp(btnArmas3,LoadImage("telas/armas/botoes/3.png"))
	SetVirtualButtonImageDown(btnArmas3,LoadImage("telas/armas/botoes/3b.png"))
	SetVirtualButtonVisible(btnArmas3, FALSE) 
	SetVirtualButtonActive(btnArmas3, FALSE)
	
	btnArmas4 = 28
	
	AddVirtualButton(btnArmas4, 950, 880, tamanhobotao - 200)		
	SetVirtualButtonImageUp(btnArmas4,LoadImage("telas/armas/botoes/4.png"))
	SetVirtualButtonImageDown(btnArmas4,LoadImage("telas/armas/botoes/4b.png"))
	SetVirtualButtonVisible(btnArmas4, FALSE) 
	SetVirtualButtonActive(btnArmas4, FALSE)
	
	btnArmas5 = 29  
	
	AddVirtualButton(btnArmas5, 1200, 880, tamanhobotao - 200)		
	SetVirtualButtonImageUp(btnArmas5,LoadImage("telas/armas/botoes/5.png"))
	SetVirtualButtonImageDown(btnArmas5,LoadImage("telas/armas/botoes/5b.png"))
	SetVirtualButtonVisible(btnArmas5, FALSE) 
	SetVirtualButtonActive(btnArmas5, FALSE)
	
	btnArmas6 = 30 
	
	AddVirtualButton(btnArmas6, 1450, 880, tamanhobotao - 200)		
	SetVirtualButtonImageUp(btnArmas6,LoadImage("telas/armas/botoes/6.png"))
	SetVirtualButtonImageDown(btnArmas6,LoadImage("telas/armas/botoes/6b.png"))
	SetVirtualButtonVisible(btnArmas6, FALSE) 
	SetVirtualButtonActive(btnArmas6, FALSE)
	
	
	btnArmas7 = 31  
	
	AddVirtualButton(btnArmas7, 1700, 880, tamanhobotao - 200)		
	SetVirtualButtonImageUp(btnArmas7,LoadImage("telas/armas/botoes/7.png"))
	SetVirtualButtonImageDown(btnArmas7,LoadImage("telas/armas/botoes/7b.png"))
	SetVirtualButtonVisible(btnArmas7, FALSE) 
	SetVirtualButtonActive(btnArmas7, FALSE)
	
	btnArmasSair =  32 
	
	AddVirtualButton(btnArmasSair, 2250, 150, tamanhobotao - 300)		
	SetVirtualButtonImageUp(btnArmasSair,LoadImage("telas/armas/botoes/sair.png"))
	SetVirtualButtonImageDown(btnArmasSair,LoadImage("telas/armas/botoes/sair.png"))
	SetVirtualButtonVisible(btnArmasSair, FALSE) 
	SetVirtualButtonActive(btnArmasSair, FALSE)
	
	btnConstrucoes1 =  33 
	
	AddVirtualButton(btnConstrucoes1, 1100, 200, tamanhobotao - 160)		
	SetVirtualButtonImageUp(btnConstrucoes1,LoadImage("telas/construcoes/botoes/1.png"))
	SetVirtualButtonImageDown(btnConstrucoes1,LoadImage("telas/construcoes/botoes/1b.png"))
	SetVirtualButtonVisible(btnConstrucoes1, FALSE) 
	SetVirtualButtonActive(btnConstrucoes1, FALSE)
	
	btnConstrucoes2 = 34   
	
	AddVirtualButton(btnConstrucoes2, 1450, 200, tamanhobotao - 160)		
	SetVirtualButtonImageUp(btnConstrucoes2,LoadImage("telas/construcoes/botoes/2.png"))
	SetVirtualButtonImageDown(btnConstrucoes2,LoadImage("telas/construcoes/botoes/2b.png"))
	SetVirtualButtonVisible(btnConstrucoes2, FALSE) 
	SetVirtualButtonActive(btnConstrucoes2, FALSE)
	
	btnConstrucoes3 =  35 
	
	AddVirtualButton(btnConstrucoes3, 1100, 500, tamanhobotao - 160)		
	SetVirtualButtonImageUp(btnConstrucoes3,LoadImage("telas/construcoes/botoes/3.png"))
	SetVirtualButtonImageDown(btnConstrucoes3,LoadImage("telas/construcoes/botoes/3b.png"))
	SetVirtualButtonVisible(btnConstrucoes3, FALSE) 
	SetVirtualButtonActive(btnConstrucoes3, FALSE)
	
	
	btnConstrucoes4 =  36 
	
	AddVirtualButton(btnConstrucoes4, 1450, 500, tamanhobotao - 160)		
	SetVirtualButtonImageUp(btnConstrucoes4,LoadImage("telas/construcoes/botoes/4.png"))
	SetVirtualButtonImageDown(btnConstrucoes4,LoadImage("telas/construcoes/botoes/4b.png"))
	SetVirtualButtonVisible(btnConstrucoes4, FALSE) 
	SetVirtualButtonActive(btnConstrucoes4, FALSE)
	
	btnConstrucoesSair =  37
	
	AddVirtualButton(btnConstrucoesSair, 2250, 150, tamanhobotao - 300)		
	SetVirtualButtonImageUp(btnConstrucoesSair,LoadImage("telas/construcoes/botoes/sair.png"))
	SetVirtualButtonImageDown(btnConstrucoesSair,LoadImage("telas/construcoes/botoes/sair.png"))
	SetVirtualButtonVisible(btnConstrucoesSair, FALSE) 
	SetVirtualButtonActive(btnConstrucoesSair, FALSE)
	
	btnDescansar1 =  38
	
	AddVirtualButton(btnDescansar1, 1150, 900, tamanhobotao - 160)		
	SetVirtualButtonImageUp(btnDescansar1,LoadImage("telas/descansar/botoes/1.png"))
	SetVirtualButtonImageDown(btnDescansar1,LoadImage("telas/descansar/botoes/1b.png"))
	SetVirtualButtonVisible(btnDescansar1, FALSE) 
	SetVirtualButtonActive(btnDescansar1, FALSE)
	
	btnDescansarSair =  39
	
	AddVirtualButton(btnDescansarSair, 2250, 150, tamanhobotao - 300)		
	SetVirtualButtonImageUp(btnDescansarSair,LoadImage("telas/descansar/botoes/sair.png"))
	SetVirtualButtonImageDown(btnDescansarSair,LoadImage("telas/descansar/botoes/sair.png"))
	SetVirtualButtonVisible(btnDescansarSair, FALSE) 
	SetVirtualButtonActive(btnDescansarSair, FALSE)
	
	btnPesquisa1 =  40
	
	AddVirtualButton(btnPesquisa1, 1150, 900, tamanhobotao - 160)		
	SetVirtualButtonImageUp(btnPesquisa1,LoadImage("telas/pesquisa/botoes/1.png"))
	SetVirtualButtonImageDown(btnPesquisa1,LoadImage("telas/pesquisa/botoes/1b.png"))
	SetVirtualButtonVisible(btnPesquisa1, FALSE) 
	SetVirtualButtonActive(btnPesquisa1, FALSE)
	
	btnPesquisaSair =  41
	
	AddVirtualButton(btnPesquisaSair, 2250, 150, tamanhobotao - 300)		
	SetVirtualButtonImageUp(btnPesquisaSair,LoadImage("telas/pesquisa/botoes/sair.png"))
	SetVirtualButtonImageDown(btnPesquisaSair,LoadImage("telas/pesquisa/botoes/sair.png"))
	SetVirtualButtonVisible(btnPesquisaSair, FALSE) 
	SetVirtualButtonActive(btnPesquisaSair, FALSE)
	
	btnIgreja1 =  42
	
	AddVirtualButton(btnIgreja1, 1150, 900, tamanhobotao - 160)		
	SetVirtualButtonImageUp(btnIgreja1,LoadImage("telas/igreja/botoes/1.png"))
	SetVirtualButtonImageDown(btnIgreja1,LoadImage("telas/igreja/botoes/1b.png"))
	SetVirtualButtonVisible(btnIgreja1, FALSE) 
	SetVirtualButtonActive(btnIgreja1, FALSE)
	
	btnIgrejaSair =  43
	
	AddVirtualButton(btnIgrejaSair, 2250, 150, tamanhobotao - 300)		
	SetVirtualButtonImageUp(btnIgrejaSair,LoadImage("telas/igreja/botoes/sair.png"))
	SetVirtualButtonImageDown(btnIgrejaSair,LoadImage("telas/igreja/botoes/sair.png"))
	SetVirtualButtonVisible(btnIgrejaSair, FALSE) 
	SetVirtualButtonActive(btnIgrejaSair, FALSE)
	
	btnSeuReino1 =  44
	
	AddVirtualButton(btnSeuReino1, 1150, 900, tamanhobotao - 160)		
	SetVirtualButtonImageUp(btnSeuReino1,LoadImage("telas/seureino/botoes/1.png"))
	SetVirtualButtonImageDown(btnSeuReino1,LoadImage("telas/seureino/botoes/1b.png"))
	SetVirtualButtonVisible(btnSeuReino1, FALSE) 
	SetVirtualButtonActive(btnSeuReino1, FALSE)
	
	btnSeuReinoSair =  45
	
	AddVirtualButton(btnSeuReinoSair, 2250, 150, tamanhobotao - 300)		
	SetVirtualButtonImageUp(btnSeuReinoSair,LoadImage("telas/seureino/botoes/sair.png"))
	SetVirtualButtonImageDown(btnSeuReinoSair,LoadImage("telas/seureino/botoes/sair.png"))
	SetVirtualButtonVisible(btnSeuReinoSair, FALSE) 
	SetVirtualButtonActive(btnSeuReinoSair, FALSE)
	
	btnSairGuerra = 46 
	
	AddVirtualButton(btnSairGuerra, 2250, 100, tamanhobotao - 300)		
	SetVirtualButtonImageUp(btnSairGuerra,LoadImage("campodeguerra/botoes/sair.png"))
	SetVirtualButtonImageDown(btnSairGuerra,LoadImage("campodeguerra/botoes/sair.png"))
	SetVirtualButtonVisible(btnSairGuerra, FALSE) 
	SetVirtualButtonActive(btnSairGuerra, FALSE)
	
	
	for x = 1 to 46
		
		SetVirtualButtonAlpha(x,1000)
		
	next x
	
endfunction

function ResetaBotoes()
	
	for x = 1 to 46
		
		DeleteVirtualButton(x)
		
	next x	
	
	CriaBotoes()
	
endfunction