function ton = spektrum(f, sr, dlzkatonu)
t = 0:1/sr:dlzkatonu;
t=t';
ton = 0;
for i=1:1:11
    ton = ton + exp(-0.2*i)*sin(2*pi*f*i*t);
end
ton=ton/(3*max(ton));