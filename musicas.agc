// File: musicas.agc
// Created: 23-02-16

Global VolumeMusicasAtual as integer

function Musicas()
	
	LoadSound(21, "musicas/1.wav")
	LoadSound(22, "musicas/2.wav")
	LoadSound(23, "musicas/3.wav")
	LoadSound(24, "musicas/4.wav")
	LoadSound(25, "musicas/5.wav")
	LoadSound(26, "musicas/6.wav")
	LoadSound(27, "musicas/7.wav")
	LoadSound(28, "musicas/8.wav")
	LoadSound(29, "musicas/9.wav")
	LoadSound(30, "musicas/10.wav")
	LoadSound(31, "musicas/11.wav")
	LoadSound(32, "musicas/12.wav")
	LoadSound(33, "musicas/13.wav")
	
			
endfunction

function VolumeMusicas()
	
	VolumeMusicasAtual = 15
	
endfunction