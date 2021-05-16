function eqtempscale = eqtet(oktava, polton, durmol)
%DURMOL : 0 pre dur, 1 pre mol
%diatonicka stupnica, rovnomerne temperovane ladenie
%co polton, to stupen s = dvanasta odmocnina z 2
s = 2^(1/12);
%komorne A4 = 440 Hz, zakladny ton budovania stupnic
%A3 = 220 Hz. A3 + 3 poltony = C4. 
C4 = 220*s^3;
%durova diatonicka stupnica, poltony medzi notami
dds = [0 2 4 5 7 9 11 12];
%molova diatonicka stupnica, poltony medzi notami
mds = [0 2 3 5 7 8 10 12];
stupnica = [];
%stupne durovej
Sdds = s.^dds;
%stupne molovej
Smds = s.^mds;
%generovanie lubovolnej stupnice: ziadanu oktavu o, poltonovu vzdialenost p od C
zaklton = C4*s^(12*(oktava-4)+polton); %ekvivalentne s: C4 * 2^(o-4) * s^p
if(durmol==0)
    stupnica = Sdds;
elseif(durmol==1)
    stupnica = Smds;
end
eqtempscale = (zaklton*stupnica)'