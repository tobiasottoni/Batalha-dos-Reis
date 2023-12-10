// File: dados_do_jogador.agc
// Created: 23-02-16

global NomeSalvo as string
global DinheiroSalvo as integer
global LevelForteSalvo as integer
global EstadoForteSalvo as integer
global TotalArqueirosSalvo as integer
global TipoArqueirosSalvo as integer
global TipoFlechaSalvo as integer
global TotalFlechasSalvo as integer
global ForcaExercitoSalvo as integer
global FavorDivinoSalvo as integer
global EnergiaSalvo as integer
global SexoJogadorSalvo as integer

global Nome as string
global Dinheiro as integer
global LevelForte as integer
global EstadoForte as integer
global TotalArqueiros as integer
global TipoArqueiros as integer
global TipoFlecha as integer
global TotalFlechas as integer
global ForcaExercito as integer
global FavorDivino as integer
global Energia as integer
global SexoJogador as integer



function IniciaDadosJogador()
	
	if GetFileExists("ns.dat")
		
		OpenToRead(1, "ns.dat")
		 	 
		 	 NomeSalvo = ReadString(1)		 		
		 	 
		CloseFile(1)
		
	else
		
		OpenToWrite ( 1, "ns.dat", 0 )		
		 	
		 	WriteString( 1, '')		 			    		    
		 	
		CloseFile(1)
		
	endif
	
	
	if GetFileExists("ds.dat")
		
		OpenToRead(1, "ds.dat")
		 	 
		 	 DinheiroSalvo = ReadInteger(1)		 		
		 	 
		CloseFile(1)
		
	else
		
		OpenToWrite ( 1, "ds.dat", 0 )		
		 	
		 	WriteInteger( 1, 1000)		 			    		    
		 	
		CloseFile(1)
		
	endif
	
	if GetFileExists("lf.dat")
		
		OpenToRead(1, "lf.dat")
		 	 
		 	LevelForteSalvo = ReadInteger(1)		 		
		 	 
		CloseFile(1)
		
	else
		
		OpenToWrite ( 1, "lf.dat", 0 )		
		 	
		 	WriteInteger( 1, 1)		 			    		    
		 	
		CloseFile(1)
		
	endif
	
	
	if GetFileExists("ef.dat")
		
		OpenToRead(1, "ef.dat")
		 	 
		 	 EstadoForteSalvo = ReadInteger(1)		 		
		 	 
		CloseFile(1)
		
	else
		
		OpenToWrite ( 1, "ef.dat", 0 )		
		 	
		 	WriteInteger( 1, 1)		 			    		    
		 	
		CloseFile(1)
		
	endif
	
	
	if GetFileExists("ta.dat")
		
		OpenToRead(1, "ta.dat")
		 	 
		 	TotalArqueirosSalvo = ReadInteger(1)		 		
		 	 
		CloseFile(1)
		
	else
		
		OpenToWrite ( 1, "ta.dat", 0 )		
		 	
		 	WriteInteger( 1, 100)		 			    		    
		 	
		CloseFile(1)
		
	endif
	
	if GetFileExists("tpa.dat")
		
		OpenToRead(1, "tpa.dat")
		 	 
		 	 TipoArqueirosSalvo = ReadInteger(1)		 		
		 	 
		CloseFile(1)
		
	else
		
		OpenToWrite ( 1, "tpa.dat", 0 )		
		 	
		 	WriteInteger( 1, 2)		 			    		    
		 	
		CloseFile(1)
		
	endif
	
	if GetFileExists("tf.dat")
		
		OpenToRead(1, "tf.dat")
		 	 
		 	 TipoFlechaSalvo = ReadInteger(1)		 		
		 	 
		CloseFile(1)
		
	else
		
		OpenToWrite ( 1, "tf.dat", 0 )		
		 	
		 	WriteInteger( 1, 1)		 			    		    
		 	
		CloseFile(1)
		
	endif
	
	if GetFileExists("tfp.dat")
		
		OpenToRead(1, "tfp.dat")
		 	 
		 	 TotalFlechasSalvo = ReadInteger(1)		 		
		 	 
		CloseFile(1)
		
	else
		
		OpenToWrite ( 1, "tfp.dat", 0 )		
		 	
		 	WriteInteger( 1, 200)		 			    		    
		 	
		CloseFile(1)
		
	endif
	
	
	if GetFileExists("fe.dat")
		
		OpenToRead(1, "fe.dat")
		 	 
		 	ForcaExercitoSalvo = ReadInteger(1)		 		
		 	 
		CloseFile(1)
		
	else
		
		OpenToWrite ( 1, "fe.dat", 0 )		
		 	
		 	WriteInteger( 1,1)		 			    		    
		 	
		CloseFile(1)
		
	endif
	
	if GetFileExists("fd.dat")
		
		OpenToRead(1, "fd.dat")
		 	 
		 	FavorDivinoSalvo = ReadInteger(1)		 		
		 	 
		CloseFile(1)
		
	else
		
		OpenToWrite ( 1, "fd.dat", 0 )		
		 	
		 	WriteInteger( 1, 1000)		 			    		    
		 	
		CloseFile(1)
		
	endif
	
	
	if GetFileExists("en.dat")
		
		OpenToRead(1, "en.dat")
		 	 
		 	EnergiaSalvo = ReadInteger(1)		 		
		 	 
		CloseFile(1)
		
	else
		
		OpenToWrite ( 1, "en.dat", 0 )		
		 	
		 	WriteInteger( 1, 1000)		 			    		    
		 	
		CloseFile(1)
		
	endif
	
	
	if GetFileExists("sj.dat")
		
		OpenToRead(1, "sj.dat")
		 	 
		 	SexoJogadorSalvo = ReadInteger(1)		 		
		 	 
		CloseFile(1)
		
	else
		
		OpenToWrite ( 1, "sj.dat", 0 )	
		
		 	WriteInteger( 1, 1)		 			    		    
		 	
		CloseFile(1)
		
	endif
	
	if SexoJogadorSalvo = 2 
		
		OpenToWrite ( 1, "tpa.dat", 0 )		
		 	
		 	WriteInteger( 1, 7)		 			    		    
		 	
		CloseFile(1)
		
		endif
	
	
	
	
endfunction


function AtualizaNomeJogador()		
			
	OpenToWrite ( 1, "ns.dat", 0 )	
		WriteString ( 1, nomeJogador )
	CloseFile(1)		
						
endfunction


function AtualizaDinheiroJogador(valor)		
			
	OpenToWrite ( 1, "ds.dat", 0 )	
		WriteInteger ( 1, valor )
	CloseFile(1)		
						
endfunction


function AtualizaLevelForteJogador(valor)		
			
	OpenToWrite ( 1, "lf.dat", 0 )	
		WriteInteger ( 1, valor )
	CloseFile(1)		
						
endfunction


function AtualizaEstadoForteJogador(valor)		
			
	OpenToWrite ( 1, "ef.dat", 0 )	
		WriteInteger ( 1, valor )
	CloseFile(1)		
						
endfunction


function AtualizaTotalArqueirosJogador(valor)		
			
	OpenToWrite ( 1, "ta.dat", 0 )	
		WriteInteger ( 1, valor )
	CloseFile(1)		
						
endfunction


function AtualizaTipoArqueirosJogador(valor)		
			
	OpenToWrite ( 1, "tpa.dat", 0 )	
		WriteInteger ( 1, valor )
	CloseFile(1)		
						
endfunction


function AtualizaTipoFlechaJogador(valor)		
			
	OpenToWrite ( 1, "tf.dat", 0 )	
		WriteInteger ( 1, valor )
	CloseFile(1)		
						
endfunction


function AtualizaTotalFlechaJogador(valor)		
			
	OpenToWrite ( 1, "tfp.dat", 0 )	
		WriteInteger ( 1, valor )
	CloseFile(1)		
						
endfunction


function AtualizaForcaExercitoJogador(valor)		
			
	OpenToWrite ( 1, "fe.dat", 0 )	
		WriteInteger ( 1, valor )
	CloseFile(1)		
						
endfunction


function AtualizaFavorDivinoJogador(valor)		
			
	OpenToWrite ( 1, "fd.dat", 0 )	
		WriteInteger ( 1, valor )
	CloseFile(1)		
						
endfunction


function AtualizaEnergiaJogador(valor)		
			
	OpenToWrite ( 1, "en.dat", 0 )	
		WriteInteger ( 1, valor )
	CloseFile(1)		
						
endfunction



function AtualizaSexoJogador(valor)		
			
	OpenToWrite ( 1, "sj.dat", 0 )	
		WriteInteger ( 1, valor )
	CloseFile(1)		
						
endfunction




function PegaNomeJogador()		
			
	OpenToRead ( 1, "ns.dat")	
		Nome = ReadString (1)
	CloseFile(1)		
						
endfunction


function PegaDinheiroJogador()		
			
	OpenToRead ( 1, "ds.dat")	
		Dinheiro = ReadInteger ( 1 )
	CloseFile(1)		
						
endfunction


function PegaLevelForte()		
			
	OpenToRead ( 1, "lf.dat")	
		LevelForte = ReadInteger ( 1 )
	CloseFile(1)		
						
endfunction


function PegaEstadoForte()		
			
	OpenToRead ( 1, "ef.dat")	
		EstadoForte = ReadInteger ( 1 )
	CloseFile(1)		
						
endfunction



function PegaTotalArqueiros()		
			
	OpenToRead ( 1, "ta.dat")	
		TotalArqueiros = ReadInteger ( 1 )
	CloseFile(1)		
						
endfunction


function PegaTipoArqueiros()		
			
	OpenToRead ( 1, "tpa.dat")	
		TipoArqueiros = ReadInteger ( 1 )
	CloseFile(1)		
						
endfunction


function PegaTipoFlecha()		
			
	OpenToRead ( 1, "tf.dat")	
		TipoArqueiros = ReadInteger ( 1 )
	CloseFile(1)		
						
endfunction


function PegaTotalFlechas()		
			
	OpenToRead ( 1, "tfp.dat")	
		TipoArqueiros = ReadInteger ( 1 )
	CloseFile(1)		
						
endfunction



function PegaForcaExercito()		
			
	OpenToRead ( 1, "fe.dat")	
		ForcaExercito = ReadInteger ( 1 )
	CloseFile(1)		
						
endfunction



function PegaFavorDivino()		
			
	OpenToRead ( 1, "fd.dat")	
		FavorDivino = ReadInteger ( 1 )
	CloseFile(1)		
						
endfunction



function PegaEnergia()		
			
	OpenToRead ( 1, "en.dat")	
		Energia = ReadInteger ( 1 )
	CloseFile(1)		
						
endfunction



function PegaSexoJogador()		
			
	OpenToRead ( 1, "sj.dat")	
		sexoJogador = ReadInteger ( 1 )
	CloseFile(1)		
						
endfunction

