%komorne A4 = 440 Hz, zakladny ton budovania stupnic
%pytagorejske ladenie
pomeryPyt = [1 9/8 81/64 4/3 3/2 27/16 243/128 2];
C4Pyt = 440*16/27;
CdurPyt = (C4Pyt*pomeryPyt)';
%ciste ladenie
pomeryJust = [1 9/8 5/4 4/3 3/2 5/3 15/8 2];
C4Just = 440*3/5;
CdurJust = (C4Just*pomeryJust)';

CdurEq=eqtet(4,0,0);
A = [CdurEq CdurJust CdurPyt]
