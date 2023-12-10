// File: botoes_acoes.agc
// Created: 23-02-16

function EntradasdoUsuario()

	if GetVirtualButtonPressed(btnJogar) = TRUE		
		ResetaBotoes()
		FechaTelaInicio()
		IniciaTelaMapa()	
	endif
	
	if GetVirtualButtonPressed(btnSair) = TRUE
		end
	endif
	
	
	if GetVirtualButtonPressed(btnSexo1) = TRUE
		sexoJogador = 1
		
		AtualizaSexoJogador(1)
	
	endif
	
	if GetVirtualButtonPressed(btnSexo2) = TRUE
		sexoJogador = 2
		
		AtualizaSexoJogador(2)
		
	endif
	
	if GetVirtualButtonPressed(btnCadastrar) = TRUE
		
		
		FechaTelaCadastro()
		
	endif
	
	if GetVirtualButtonPressed(btnGuerra) = TRUE
		
		if EnergiaSalvo >= 100 AND FavorDivinoSalvo >= 100 AND TotalArqueirosSalvo >= 50 AND TotalFlechasSalvo >= 60
		
		ResetaBotoes()
		FechaTelaMapa()
		CriaExercitoPlayer()
		CriaExercitoAdversario()
		IniciaGuerra()		
		
		else
			
			PlaySound(13, 100, FALSE)
			SetSpriteVisible(conselheiroPeq, TRUE)
			
		endif
		
	endif
	
	
	if GetVirtualButtonPressed(btnTreinamento) = TRUE
		ResetaBotoes()		
		FechaTelaMapa()
		IniciaTelaTreinamento()	
		SetSpriteVisible(conselheiroPeq, FALSE)	
	endif
	
	
	if GetVirtualButtonPressed(btnTreinamento1) = TRUE
		
		if DinheiroSalvo > 100
			
			StopSound(10)
			StopSound(11)
			PlaySound(11, 100, FALSE)
			PlaySound(14, 100, FALSE)
			
		DinheiroSalvo = DinheiroSalvo - 100
		
		AtualizaDinheiroJogador(DinheiroSalvo)
		
		EstiloArqueiro = 2
						
		AtualizaTipoArqueirosJogador(2)
		
		
		TotalArqueirosSalvo = TotalArqueirosSalvo + 10
		
		AtualizaTotalArqueirosJogador(TotalArqueirosSalvo)	
		
		
		else
		
		StopSound(10)
		PlaySound(12)
		
		endif
		
		SetSpriteVisible(conselheiroPeq, TRUE)
		
				
	endif
	
	if GetVirtualButtonPressed(btnTreinamento2) = TRUE
		
		
		if DinheiroSalvo > 100
			
			StopSound(10)
			StopSound(11)
			PlaySound(11, 100, FALSE)
			PlaySound(14, 100, FALSE)
			
		DinheiroSalvo = DinheiroSalvo - 100
		
		AtualizaDinheiroJogador(DinheiroSalvo)
		
		EstiloArqueiro = 7
						
		AtualizaTipoArqueirosJogador(7)
		
		TotalArqueirosSalvo = TotalArqueirosSalvo + 10
		
		AtualizaTotalArqueirosJogador(TotalArqueirosSalvo)
		
		else
		
		StopSound(10)
		PlaySound(12)
		
		endif
		
		SetSpriteVisible(conselheiroPeq, TRUE)
		
				
	endif
	
	if GetVirtualButtonPressed(btnTreinamento3) = TRUE
		
		if DinheiroSalvo > 200
			
			StopSound(10)
			StopSound(11)
			PlaySound(11, 100, FALSE)
			PlaySound(14, 100, FALSE)
			
		DinheiroSalvo = DinheiroSalvo - 200
		
		AtualizaDinheiroJogador(DinheiroSalvo)
		
		EstiloArqueiro = 3
						
		AtualizaTipoArqueirosJogador(3)
		
		TotalArqueirosSalvo = TotalArqueirosSalvo + 10
		
		AtualizaTotalArqueirosJogador(TotalArqueirosSalvo)
		
		else
		
		StopSound(10)
		PlaySound(12)
		
		endif
		
		SetSpriteVisible(conselheiroPeq, TRUE)		
		
				
	endif
	
	if GetVirtualButtonPressed(btnTreinamento4) = TRUE
		
		if DinheiroSalvo > 200
			
			StopSound(10)
			StopSound(11)
			PlaySound(11, 100, FALSE)
			PlaySound(14, 100, FALSE)
			
		DinheiroSalvo = DinheiroSalvo - 200
		
		AtualizaDinheiroJogador(DinheiroSalvo)
		
		EstiloArqueiro = 8
						
		AtualizaTipoArqueirosJogador(8)
		
		TotalArqueirosSalvo = TotalArqueirosSalvo + 10
		
		AtualizaTotalArqueirosJogador(TotalArqueirosSalvo)
		
		else
		
		StopSound(10)
		PlaySound(12)
		
		endif
		
		SetSpriteVisible(conselheiroPeq, TRUE)
				
	endif
	
	if GetVirtualButtonPressed(btnTreinamento5) = TRUE
		
		if DinheiroSalvo > 300
			
			StopSound(10)
			StopSound(11)
			PlaySound(11, 100, FALSE)
			PlaySound(14, 100, FALSE)
			
		DinheiroSalvo = DinheiroSalvo - 300
		
		AtualizaDinheiroJogador(DinheiroSalvo)
		
		EstiloArqueiro = 4
						
		AtualizaTipoArqueirosJogador(4)
		
		TotalArqueirosSalvo = TotalArqueirosSalvo + 10
		
		AtualizaTotalArqueirosJogador(TotalArqueirosSalvo)
		
		else
		
		StopSound(10)
		PlaySound(12)
		
		endif
		
		SetSpriteVisible(conselheiroPeq, TRUE)
		
						
	endif
	
	if GetVirtualButtonPressed(btnTreinamento6) = TRUE
		
		if DinheiroSalvo > 300
			
			StopSound(10)
			StopSound(11)
			PlaySound(11, 100, FALSE)
			PlaySound(14, 100, FALSE)
			
		DinheiroSalvo = DinheiroSalvo - 300
		
		AtualizaDinheiroJogador(DinheiroSalvo)
		
		EstiloArqueiro = 9
						
		AtualizaTipoArqueirosJogador(9)
		
		
		TotalArqueirosSalvo = TotalArqueirosSalvo + 10
		
		AtualizaTotalArqueirosJogador(TotalArqueirosSalvo)
		
		else
		
		StopSound(10)
		PlaySound(12)
		
		endif
		
		SetSpriteVisible(conselheiroPeq, TRUE)
				
	endif
	
	if GetVirtualButtonPressed(btnTreinamento7) = TRUE
		
		if DinheiroSalvo > 50
			
			StopSound(10)
			StopSound(11)
			PlaySound(11, 100, FALSE)
			PlaySound(14, 100, FALSE)
			
		DinheiroSalvo = DinheiroSalvo - 50
		
		AtualizaDinheiroJogador(DinheiroSalvo)
		
		ForcaExercitoSalvo = ForcaExercitoSalvo + 10
		
		ForcaExercito = ForcaExercitoSalvo
						
		AtualizaForcaExercitoJogador(ForcaExercitoSalvo)
		
		else
		
		StopSound(10)
		PlaySound(12)
		
		endif
		
		SetSpriteVisible(conselheiroPeq, TRUE)
				
	endif
	
		
	if GetVirtualButtonPressed(btnTreinamento8) = TRUE
		
		if DinheiroSalvo > 400
			
			StopSound(10)
			StopSound(11)
			PlaySound(11, 100, FALSE)
			PlaySound(14, 100, FALSE)
			
		DinheiroSalvo = DinheiroSalvo - 400
		
		AtualizaDinheiroJogador(DinheiroSalvo)
		
		EstiloArqueiro = 6
						
		AtualizaTipoArqueirosJogador(6)
		
		TotalArqueirosSalvo = TotalArqueirosSalvo + 10
		
		AtualizaTotalArqueirosJogador(TotalArqueirosSalvo)
		
		else
		
		StopSound(10)
		PlaySound(12)
		
		endif
		
		SetSpriteVisible(conselheiroPeq, TRUE)
		
				
	endif
	
	if GetVirtualButtonPressed(btnTreinamento9) = TRUE		
		
		if DinheiroSalvo > 800
			
			StopSound(10)
			StopSound(11)
			PlaySound(11, 100, FALSE)
			PlaySound(14, 100, FALSE)
			
		DinheiroSalvo = DinheiroSalvo - 800
		
		AtualizaDinheiroJogador(DinheiroSalvo)
		
		EstiloArqueiro = 5
						
		AtualizaTipoArqueirosJogador(5)
		
		TotalArqueirosSalvo = TotalArqueirosSalvo + 10
		
		AtualizaTotalArqueirosJogador(TotalArqueirosSalvo)
		
		else
		
		StopSound(10)
		PlaySound(12)
		
		endif
		
		SetSpriteVisible(conselheiroPeq, TRUE)
					
	endif
	
	
	
	if GetVirtualButtonPressed(btnTreinamentoSair) = TRUE
		FechaTelaTreinamento()
		ResetaBotoes()
		IniciaTelaMapa()
		StopSound(10)
		StopSound(11)
		StopSound(12)
		SetSpriteVisible(conselheiroPeq, FALSE)
					
	endif
	
	if GetVirtualButtonPressed(btnGuerra1) = TRUE
		 
		 PlayerAtira()
         AdversarioAtira()        	
        
		
	endif
	
	if GetVirtualButtonPressed(btnSairGuerra) = TRUE
		
		FechaTelaGuerra()
		ResetaBotoes()
		IniciaTelaMapa()
		StopSound(15)
		StopSound(16)
		StopSound(30)
		StopSound(31)
		StopSound(32)
		StopSound(33)
					
	endif
	
	if GetVirtualButtonPressed(btnArmas) = TRUE	
		ResetaBotoes()
		FechaTelaMapa()
		IniciaTelaArmas()	
		SetSpriteVisible(conselheiroPeq, FALSE)						
	endif
	
		
	if GetVirtualButtonPressed(btnArmas1) = TRUE	
		
		StopSound(11)
		
		TipoFlechaSalvo = 1
		
		AtualizaTipoFlechaJogador(TipoFlechaSalvo)
	
		TotalFlechasSalvo = TotalFlechasSalvo + 100
		
		AtualizaTotalFlechaJogador(TotalFlechasSalvo)
		
		StopSound(4)
		PlaySound(11)
		
		SetSpriteVisible(conselheiroPeq, TRUE)
		
							
	endif
	
	if GetVirtualButtonPressed(btnArmas2) = TRUE	
		
		if DinheiroSalvo > 100
			
			StopSound(11)
			StopSound(4)	
			PlaySound(14, 100, FALSE)
			PlaySound(11, 100,FALSE)
			
			
		DinheiroSalvo = DinheiroSalvo - 100
		
		AtualizaDinheiroJogador(DinheiroSalvo)
		
		TipoFlechaSalvo = 2
		
		AtualizaTipoFlechaJogador(TipoFlechaSalvo)
	
		TotalFlechasSalvo = TotalFlechasSalvo + 100
		
		AtualizaTotalFlechaJogador(TotalFlechasSalvo)
		
		
		else
			StopSound(11)
			StopSound(4)
			PlaySound(12, 100, FALSE)
			
		endif
		
		SetSpriteVisible(conselheiroPeq, TRUE)
		
							
	endif
	
	if GetVirtualButtonPressed(btnArmas3) = TRUE
		
		if DinheiroSalvo > 200
			
			StopSound(11)
			StopSound(4)
			PlaySound(14, 100, FALSE)
			PlaySound(11, 100, FALSE)
			
		DinheiroSalvo = DinheiroSalvo - 200
		
		AtualizaDinheiroJogador(DinheiroSalvo)
		
		TipoFlechaSalvo = 3
		
		AtualizaTipoFlechaJogador(TipoFlechaSalvo)
	
		TotalFlechasSalvo = TotalFlechasSalvo + 100
		
		AtualizaTotalFlechaJogador(TotalFlechasSalvo)
		
		else
			StopSound(11)
			StopSound(4)
			PlaySound(12, 100, FALSE)
			
		endif
		
		SetSpriteVisible(conselheiroPeq, TRUE)
		
							
	endif
	
	if GetVirtualButtonPressed(btnArmas4) = TRUE	
		
		if DinheiroSalvo > 300
			
			StopSound(11)
			StopSound(4)
			PlaySound(14, 100, FALSE)
			PlaySound(11, 100, FALSE)
			
		DinheiroSalvo = DinheiroSalvo - 300
		
		AtualizaDinheiroJogador(DinheiroSalvo)
		
		TipoFlechaSalvo = 4
		
		AtualizaTipoFlechaJogador(TipoFlechaSalvo)
	
		TotalFlechasSalvo = TotalFlechasSalvo + 100
		
		AtualizaTotalFlechaJogador(TotalFlechasSalvo)
		
		else
			StopSound(11)
			StopSound(4)
			PlaySound(12, 100, FALSE)
			
		endif
		
		SetSpriteVisible(conselheiroPeq, TRUE)		
							
	endif
	
	if GetVirtualButtonPressed(btnArmas5) = TRUE	
		
		if DinheiroSalvo > 400
			StopSound(11)
			StopSound(4)
			PlaySound(14, 100, FALSE)
			PlaySound(11, 100, FALSE)
			
		DinheiroSalvo = DinheiroSalvo - 400
		
		AtualizaDinheiroJogador(DinheiroSalvo)
		
		TipoFlechaSalvo = 5
		
		AtualizaTipoFlechaJogador(TipoFlechaSalvo)
	
		TotalFlechasSalvo = TotalFlechasSalvo + 100
		
		AtualizaTotalFlechaJogador(TotalFlechasSalvo)
		
		else
			StopSound(11)
			StopSound(4)
			PlaySound(12, 100, FALSE)
			
		endif
		
		SetSpriteVisible(conselheiroPeq, TRUE)
		
							
	endif
	
	if GetVirtualButtonPressed(btnArmas6) = TRUE
		
		if DinheiroSalvo > 500
			StopSound(11)
			StopSound(4)
			PlaySound(14, 100, FALSE)
			PlaySound(11, 100, FALSE)
			
		DinheiroSalvo = DinheiroSalvo - 500
		
		AtualizaDinheiroJogador(DinheiroSalvo)
		
		TipoFlechaSalvo = 6
		
		AtualizaTipoFlechaJogador(TipoFlechaSalvo)
	
		TotalFlechasSalvo = TotalFlechasSalvo + 100
		
		AtualizaTotalFlechaJogador(TotalFlechasSalvo)	
		
		else
			StopSound(11)
			StopSound(4)
			PlaySound(12, 100, FALSE)
			
		endif
		
		SetSpriteVisible(conselheiroPeq, TRUE)
		
							
	endif
	
	if GetVirtualButtonPressed(btnArmas7) = TRUE	
		
		if DinheiroSalvo > 600
			StopSound(11)
			StopSound(4)
			PlaySound(14, 100, FALSE)
			PlaySound(11, 100, FALSE)
			
		DinheiroSalvo = DinheiroSalvo - 600
		
		AtualizaDinheiroJogador(DinheiroSalvo)
		
		TipoFlechaSalvo = 7
		
		AtualizaTipoFlechaJogador(TipoFlechaSalvo)
	
		TotalFlechasSalvo = TotalFlechasSalvo + 100
		
		AtualizaTotalFlechaJogador(TotalFlechasSalvo)
		
		else
			StopSound(11)
			StopSound(4)
			PlaySound(12, 100, FALSE)
		
		endif
		
		SetSpriteVisible(conselheiroPeq, TRUE)
		
							
	endif
	
	if GetVirtualButtonPressed(btnArmasSair) = TRUE	
		ResetaBotoes()
		FechaTelaArmas()
		IniciaTelaMapa()
		StopSound(4)
		StopSound(11)
		StopSound(12)	
		
		SetSpriteVisible(conselheiroPeq, FALSE)
						
	endif
	
	if GetVirtualButtonPressed(btnConstrucoes) = TRUE	
		
		ResetaBotoes()
		FechaTelaMapa()
		IniciaTelaConstrucoes()
		SetSpriteVisible(conselheiroPeq, FALSE)
					
	endif
	
	if GetVirtualButtonPressed(btnConstrucoes1) = TRUE	
		
		if DinheiroSalvo > 500
			StopSound(11)
			StopSound(5)
			PlaySound(14, 100, FALSE)
			PlaySound(11, 100, FALSE)
			
		DinheiroSalvo = DinheiroSalvo - 500
		
		AtualizaDinheiroJogador(DinheiroSalvo)
		
		EstadoFortePlayer = 1
		
		AtualizaEstadoForteJogador(1)
	
		IniciaDadosJogador()
		
		else
			StopSound(11)
			StopSound(5)
			PlaySound(12, 100, FALSE)
			
		endif
		
		SetSpriteVisible(conselheiroPeq, TRUE)
		
					
	endif
	
	if GetVirtualButtonPressed(btnConstrucoes2) = TRUE	
		
		if DinheiroSalvo > 1000
			StopSound(11)
			StopSound(5)
			PlaySound(14, 100, FALSE)
			PlaySound(11, 100, FALSE)
			
		DinheiroSalvo = DinheiroSalvo - 1000
		
		AtualizaDinheiroJogador(DinheiroSalvo)
		
		LevelFortePlayer = 2
		
		AtualizaLevelForteJogador(2)	
		
		IniciaDadosJogador()
		
		else
			StopSound(11)
			StopSound(5)
			PlaySound(12, 100, FALSE)
			
		endif
		
		SetSpriteVisible(conselheiroPeq, TRUE)
					
	endif
	
	if GetVirtualButtonPressed(btnConstrucoes3) = TRUE	
		
		if DinheiroSalvo > 2000
			StopSound(11)
			StopSound(5)
			PlaySound(14, 100, FALSE)
			PlaySound(11, 100, FALSE)
			
		DinheiroSalvo = DinheiroSalvo - 2000
		
		AtualizaDinheiroJogador(DinheiroSalvo)
		
		LevelFortePlayer = 3
		
		AtualizaLevelForteJogador(3)	
		
		IniciaDadosJogador()
		
		else
			StopSound(11)
			StopSound(5)
			PlaySound(12, 100, FALSE)
			
		endif
		
		SetSpriteVisible(conselheiroPeq, TRUE)
		
					
	endif
	
	if GetVirtualButtonPressed(btnConstrucoes4) = TRUE	
		
		if DinheiroSalvo > 3000
			StopSound(11)
			StopSound(5)
			PlaySound(14, 100, FALSE)
			PlaySound(11, 100, FALSE)
			
		DinheiroSalvo = DinheiroSalvo - 3000
		
		AtualizaDinheiroJogador(DinheiroSalvo)
		
		LevelFortePlayer = 4
		
		AtualizaLevelForteJogador(4)
		
		IniciaDadosJogador()
		
		else
			StopSound(11)
			StopSound(5)
			PlaySound(12, 100, FALSE)
			
		endif
		
		SetSpriteVisible(conselheiroPeq, TRUE)
					
	endif
	
		
	if GetVirtualButtonPressed(btnConstrucoesSair) = TRUE	
		ResetaBotoes()
		FechaTelaConstrucoes()
		IniciaTelaMapa()
		StopSound(5)
		StopSound(11)
		StopSound(12)	
		
		SetSpriteVisible(conselheiroPeq, FALSE)
					
	endif
	
	if GetVirtualButtonPressed(btnDescansar) = TRUE	
		ResetaBotoes()
		FechaTelaMapa()
		IniciaTelaDescansar()
		
		SetSpriteVisible(conselheiroPeq, FALSE)
	endif
	
	
	if GetVirtualButtonPressed(btnDescansar1) = TRUE	
		
		EnergiaSalvo = EnergiaSalvo + 100
		
		AtualizaEnergiaJogador(EnergiaSalvo)
	
		IniciaDadosJogador()	
		
		StopSound(11)
		StopSound(6)
		PlaySound(11, 100, FALSE)	
		
		SetSpriteVisible(conselheiroPeq, TRUE)
		
					
	endif
	
	
	if GetVirtualButtonPressed(btnDescansarSair) = TRUE	
		
		ResetaBotoes()
		FechaTelaDescansar()
		IniciaTelaMapa()
		StopSound(6)
		StopSound(11)
		StopSound(12)
		
		SetSpriteVisible(conselheiroPeq, FALSE)		
					
	endif
	
	
	if GetVirtualButtonPressed(btnPesquisa) = TRUE	
		
		ResetaBotoes()
		FechaTelaMapa()
		IniciaTelaPesquisa()
		
		SetSpriteVisible(conselheiroPeq, FALSE)
		
					
	endif
	
	
	if GetVirtualButtonPressed(btnPesquisa1) = TRUE	
		
		if DinheiroSalvo > 1200
			StopSound(11)
			StopSound(8)
			PlaySound(14, 100, FALSE)
			PlaySound(11, 100, FALSE)
			
		DinheiroSalvo = DinheiroSalvo - 1200
		
		AtualizaDinheiroJogador(DinheiroSalvo)
		
		
		ForcaExercitoSalvo = ForcaExercitoSalvo + 100
		
		AtualizaForcaExercitoJogador(ForcaExercitoSalvo)
	
		IniciaDadosJogador()
		
		else
			
			StopSound(8)
			PlaySound(12, 100, FALSE)
		
		endif
		
		SetSpriteVisible(conselheiroPeq, TRUE)
		
					
	endif
	
	
	if GetVirtualButtonPressed(btnPesquisaSair) = TRUE	
		
		ResetaBotoes()
		FechaTelaPesquisa()
		IniciaTelaMapa()
		StopSound(8)
		StopSound(11)
		StopSound(12)
		SetSpriteVisible(conselheiroPeq, FALSE)
		
					
	endif
	
	if GetVirtualButtonPressed(btnIgreja) = TRUE	
		ResetaBotoes()
		FechaTelaMapa()
		IniciaTelaIgreja()	
		SetSpriteVisible(conselheiroPeq, FALSE)	
					
	endif
	
	
	if GetVirtualButtonPressed(btnIgreja1) = TRUE	
		
		
		StopSound(7)
		StopSound(11)
		PlaySound(11, 100, FALSE)
		
		FavorDivinoSalvo = FavorDivinoSalvo + 100
		
		AtualizaFavorDivinoJogador(FavorDivinoSalvo)
	
		IniciaDadosJogador()
		
		SetSpriteVisible(conselheiroPeq, TRUE)
		
					
	endif
	
	
	if GetVirtualButtonPressed(btnIgrejaSair) = TRUE	
		
		ResetaBotoes()
		FechaTelaIgreja()
		IniciaTelaMapa()
		StopSound(7)
		StopSound(11)
		StopSound(12)
		
		SetSpriteVisible(conselheiroPeq, FALSE)
		
					
	endif
	
	if GetVirtualButtonPressed(btnSeuReino) = TRUE	
		ResetaBotoes()
		FechaTelaMapa()
		IniciaTelaSeuReino()
		SetSpriteVisible(conselheiroPeq, FALSE)
		
					
	endif
	
	
	if GetVirtualButtonPressed(btnSeuReino1) = TRUE	
		
		StopSound(9)
		StopSound(11)
		StopSound(12)
		PlaySound(11)
		SetSpriteVisible(conselheiroPeq, TRUE)
					
	endif
	
	
	if GetVirtualButtonPressed(btnSeuReinoSair) = TRUE	
		
		ResetaBotoes()
		FechaTelaSeuReino()
		IniciaTelaMapa()
		StopSound(9)
		StopSound(11)
		StopSound(12)
		
		SetSpriteVisible(conselheiroPeq, FALSE)
		
					
	endif
	
	
endfunction