#include "sprites.bas"
#include "sound.bas"
#include <print42.bas>

poke uinteger 23675,@udg

dim mariol(2) as ubyte => {5,3,1}
dim marior(2) as ubyte => {11,9,7}
dim puntos,misses as uinteger
dim numcajas,cajas_camion as ubyte
dim borra_cajas(9) as ubyte => {50,44,51,45,52,46,53,47,54,48}
dim spl,spr as ubyte
dim frames, frame_siguiente_caja as long
dim bonus as ubyte
dim cajaimpar  as ubyte
dim speed as ubyte
dim sframes, oldsframes as uinteger
dim cajaborder as ubyte

dim lu,ld,ru,rd as string

lu="q"
ld="a"
ru="p"
rd="l"


init_sprites()
start:
border 0
pintamenu()
	ink 2:paper 0: bright 1
	printat42(20, 0)
	print42(" "+lu+" & "+ld+" to move Luigi")
	printat42(21, 0)
	print42(" "+ru+" & "+rd+" to move Mario")
	printat42(22, 0)
	print42(" r to redefine keys ")
	ink 1
	printat42(23, 0)
	print42(" BSO by Irrlicht Prj")
	song()

	if inkey$="r" then
	sound (3)
	ink 2
	print at 20,0;"               "
	print at 21,0;"               "
	print at 22,0;"               "
	pausa(10)
	printat42(20, 0)
	print42(" Key for Luigi UP  ")
	lu=getkey(".",".",".",".")
	pausa(10)
	printat42(20, 0)
	print42(" Key for Luigi DOWN")
	ld=getkey(lu,".",".",".")
	pausa(10)
	printat42(20, 0)
	print42(" Key for Mario UP  ")
	ru=getkey(lu,ld,".",".")
	pausa(10)
	printat42(20, 0)
	print42(" Key for Mario DOWN")
	rd=getkey(lu,ld,ru,".")
	goto start
	end if  

border 2
ink 0:paper 7: bright 1
cls
pinta_pantalla()
tile(21):'camion

print at 0,20;bright 8;"      "
print at 1,20;bright 8;"      "

spr=0
spl=0

tile(mariol(spl))
tile(marior(spr))

speed=16
bonus=1
frames=0
puntos=0
misses=0
numcajas=0
cajas_camion=0
cajas(numcajas,0)=0
cajas(numcajas,1)=10
cajaimpar=0
frame_siguiente_caja=40
pinta_puntos()
oldsframes=peek (uinteger,23672)


loop_ppal:
cajaborder=0

dim temp as ubyte

sframes=peek (uinteger,23672)
temp=2-(sframes-oldsframes)
if temp>2 temp=0
pausa(temp)
oldsframes=sframes


' MUEVE CAJAS----------------------------------------------------------------------------------------------
dim z as ubyte
z=0
do while z<numcajas

if cajas(z,0)=54-(cajas_camion/2) or cajas(z,0)=48-(cajas_camion/2) then
	cajas(z,1)=cajas(numcajas-1,1)
	cajas(z,0)=cajas(numcajas-1,0)


	numcajas= numcajas-1
	cajas_camion=cajas_camion+1
	if cajas_camion=6 then tile(22)

	'Se va el camión'
	if cajas_camion=8 then
		cajas_camion=0
		cajaimpar=0
		for n=0 to 9
			inc_puntos()
			pinta_puntos()
			pausa(5)
		next n
		pause (50)
		for n=0 to 6
			print at 6+n,0;bright 1;"      ":'desaparece el camion'
		next n

		for n=0 to 3
			tile(23):'humo
			pausa(20)
			btile(23):'humo
			pausa(20) 
		next n
		btile(mariol(spl))
		btile(marior(spr))

		pausa(10)
		descanso()
		tile(21)
		jefe(0,1)
		tile(mariol(spl))
		tile(marior(spr))
	end if

else
	cajas(z,1)=cajas(z,1)+1:'Incrementa los frames de esta caja 
	if cajas(z,1) = speed

		cajas (z,1)=0

		if z=0 then sound(2)
	
		cajas(z,0)=cajas(z,0)+1:'Incrementa la posición de la caja

		if (cajas(z,0)=0  or cajas(z,0)=16 or cajas(z,0)=32 ) then
			if cajaborder=1 then cajas(z,0)=cajas(z,0)-1
			cajaborder=1
		end if
		
		
		
		if cajas(z,0)=43 
			if cajaimpar=255 then cajas(z,0)=cajas(z,0)+6
			cajaimpar=not cajaimpar
		end if
		
		
		
		if ((cajas(z,0)=3 and spr <> 0) or _	
		   (cajas(z,0)=11 and spl <> 0) or _
		   (cajas(z,0)=19 and spr <> 1) or _
		   (cajas(z,0)=27 and spl <> 1) or _
		   (cajas(z,0)=35 and spr <> 2) or _
		   ((cajas(z,0)=43 or cajas(z,0)=49) and spl <> 2) )then
			
			btile(mariol(spl))
			btile(marior(spr))			
			miss(z)
			jefe(1,5)
			do while misses=3 and inkey$=""
				jefe(0,1):' jefe sin ruido hasta que pulse tecla'
			loop
			
			if misses=3 goto start
			tile(mariol(spl))
			tile(marior(spr))
			
			z=z+1
			goto sigue
		
		else

			if  cajas(z,0)=11 or cajas(z,0)=27 or cajas(z,0)=43 or cajas(z,0)=49 then 
				btile(mariol(spl))
				tile(mariol(spl)-1)
				sound(1)
				if spl=1 then pausa(2)
				inc_puntos()
				btile(mariol(spl)-1)
				tile(mariol(spl))
			end if
	
			if  cajas(z,0)=3 or cajas(z,0)=19 or cajas(z,0)=35 then 
				btile(marior(spr))
				tile(marior(spr)-1)
				sound(1)
				if spr=1 then pausa(2)
				inc_puntos()
				btile(marior(spr)-1)
				tile(marior(spr))
			end if
		end if	

		if cajas(z,0)>42 then
			for n=1 to 10-cajas_camion
				pinta_caja(borra_cajas(n-1),0)
			next n
		end if	

	end if
	pinta_caja(cajas (z,0),1):'Pinta cajas
	borra_caja_anterior(cajas(z,0))
	z=z+1

end if


sigue:
		
loop

' MUEVE MARIO----------------------------------------------------------------------------------------------------

if inkey$=lu and spl<2	
	btile(mariol(spl))
	spl=spl+1
	tile(mariol(spl))
	sound(4)
	if spl=1 then pausa(5)
end if

if inkey$=ld and spl>0
	btile(mariol(spl))
	spl=spl-1
	tile(mariol(spl))
	sound(4)
	if spl=1 then pausa(5)
end if

if inkey$=ru and spr<2	
	btile(marior(spr))
	spr=spr+1
	tile(marior(spr))
	sound(4)
	if spr=1 then pausa(5)
end if

if inkey$=rd and spr>0
	btile(marior(spr))
	spr=spr-1
	tile(marior(spr))
	sound(4)
	if spr=1 then pausa(5)
end if



'Caja Nueva'

if (frames=frame_siguiente_caja and numcajas <4) or numcajas=0   then

	frame_siguiente_caja=frames+(peek(23672)*4)+256
	cajas(numcajas,0)=0
	cajas(numcajas,1)=0
	
	numcajas=numcajas+1
end if

frames=frames+1
goto loop_ppal


end


sub miss(zz as ubyte)
	dim n,posc,cc as ubyte
	posc=cajas(zz,0)
	cc=posc-1
	if posc=2 then cc=0
	if posc=49 then cc=42

	for n=0 to 4	

		pinta_caja(cc,1)
		sound(0)
		pinta_caja(cc,0)
		sound(0)
	next n

	'borra_caja_anterior(cajas(zz,0))
	
	if posc=3 or posc=19 or posc=35 then 
		cc=13 
	else 
		cc=12 
	end if

	for n=0 to 4
		tile(cc)
		pausa(10)
		btile(cc)
		pausa(10)
	next n
	
	
	cajas(zz,1)=cajas(numcajas-1,1)
	cajas(zz,0)=cajas(numcajas-1,0)
	numcajas= numcajas-1
	misses=misses+1
	tilexy(18+(misses*2), 0 , misses+17 )
	if bonus=2 then bonus=1
	if misses=1 then tilexy(25,3,29)
end sub






sub borra_caja_anterior( z as ubyte)
	if (z>1 and z<45) or z=50 or z=49 then
		dim c as ubyte
		c=z-1
		if z=2 then c=0
		if z=49 then c=42

		pinta_caja(c ,0):'Borra la caja anterior
	end if
end sub





sub jefe(s as ubyte,r as ubyte)

do while r>0
	if s=1 then sound (0)
	tilexy(0,16,15)
	pausa(10)
	if inkey$<>"" and s=0 then r=0: goto salir
	pausa(10)
	if inkey$<>"" and s=0 then r=0: goto salir
	tilexy(0,16,14)
	pausa(10)
	if inkey$<>"" and s=0 then r=0: goto salir
	pausa(10)
	if inkey$<>"" and s=0 then r=0: goto salir
	r=r-1
	salir:
loop
	
	btile(14)

end sub


sub pausa(byval nnn as byte)
for zzz=1 to nnn
asm
halt
end asm
next zzz
end sub

sub descanso()

for n=0 to 4
pausa(20)
tile(17)
tile(16)
pausa(20)
print at 16,4;bright 1;"  "
print at 17,4;bright 1;"  "
print at 4,27;bright 1;" \T"
print at 5,27;bright 1;"  "
pausa(20)
next n
btile(16)
btile(17)
end sub



sub inc_puntos()
	puntos=puntos+bonus
	if puntos>999 then puntos=999
	if puntos=300 
		if  misses=0 then 
			bonus=2 
		else 
			misses=0
			print at 3,25;bright 1;"  "
			print at 0,18;bright 1;"      "
			print at 1,18;bright 1;"      "
		end if
	end if
	sound(3)
	if puntos <700 then speed=16-(puntos/100)
	pinta_puntos()
end sub


sub pinta_puntos()
	dim c1,c2,c3 as uinteger
	c1=puntos/100
	c2=(puntos-c1*100)/10
	c3=puntos mod 10

	if bonus=1 or ((bonus=2) and (frames mod 5 <3)) then 
	print7seg(28,0,c1)
	print7seg(29,0,c2)
	print7seg(30,0,c3)
	else 
	poke uinteger 23675,@seg7
	print bright 1; at 0,28;"   "; at 1,28;"\U\U\U"
	end if
end sub




