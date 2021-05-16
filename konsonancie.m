%generovanie oktav, kvint a tercii
%v pytagorejskom, cistom a rovnomerne, temperovanom ladeni
%komorne A4 = 440 Hz => A3 = 220 Hz (vo vsetkych ladeniach)
%sr = sample rate v Hz
sr = 44100;
%dlzka tonu v sekundach
dlzkatonu = 1;
%t cas
t = (0:1/sr:dlzkatonu)';
fA3 = 220;
tonA3 = spektrum(fA3, sr, dlzkatonu);

%oktava je rovnaka pre vsetky ladenia
fA4 = 2*fA3;
tonA4 = spektrum(fA4, sr, dlzkatonu);
oktava = tonA3 + tonA4;
audiowrite('oktava.wav', oktava, sr)

%kvinta - pytagorejska VS rovnomerne temp.
%pytagorejska a cista didymicka kvinta su obe 3:2
fPytKvinta = fA3*3/2;
tonPytKvinta = spektrum(fPytKvinta, sr, dlzkatonu);
fEqKvinta = fA3*2^(7/12);
tonEqKvinta = spektrum(fEqKvinta, sr, dlzkatonu);
PytKvinta = tonA3 + tonPytKvinta;
EqKvinta = tonA3 + tonEqKvinta;
pauza = 0*t;
kvinty = [EqKvinta; pauza; PytKvinta];
audiowrite('kvinty.wav', kvinty, sr);

%tercia - pytagorejska VS cista didymicka VS rovnomerne temp.
%pyt tercia 81:64, cista 5:4, rovnomerne temp 2^(4/12)
fPytTercia = fA3*81/64;
tonPytTercia = spektrum(fPytTercia, sr, dlzkatonu);
fJustTercia = fA3*5/4;
tonJustTercia = spektrum(fJustTercia, sr, dlzkatonu);
fEqTercia = fA3*2^(4/12);
tonEqTercia = spektrum(fEqTercia, sr, dlzkatonu);
PytTercia = tonA3 + tonPytTercia;
JustTercia = tonA3 + tonJustTercia;
EqTercia = tonA3 + tonEqTercia;
tercie = [PytTercia; pauza; JustTercia; pauza; EqTercia];
audiowrite('tercie.wav', tercie, sr);

