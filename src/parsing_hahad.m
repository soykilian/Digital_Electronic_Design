vector = audioinfo("haha.wav");
fd = fopen('sample_in.dat', 'w');
[y, Fs] = audioread('haha.wav');
t1 = 0 : 1/ Fs : vector.Duration;
t2 = t1(1: end-2);
t1 = t1(1:end-1);
%sound(y)
fprintf(fd, '%d\n', round(y.*127));
test_lp = filter([0.039, 0.2422,0.445,0.2422,0.039], [1,0,0,0,0], y);
test_hp = filter([-0.0078, -0.2031,0.6015,-0.2031,-0.0078], [1,0,0,0,0], y);
%%subplot(2,1,1)
sound(test_lp);
vhdlout_hp = load("sample_out_hp.dat")/127;
vhdlout_hp(1) = 0;
vhdlout_hp(end + 1) = 0;
vhdlout_lp = load ("sample_out_lp.dat")/127;
vhdlout_lp(end + 1) = 0;
vhdlout_lp(1) = 0;
vhdlout_lp = circshift(vhdlout_lp, -2);
vhdlout_hp = circshift(vhdlout_hp, -2);
error_lp = vhdlout_lp - test_lp;
error_hp = vhdlout_hp - test_hp;
sound(vhdlout_lp)
%sound(vhdlout_lp)
subplot(2,2,1)
title("Highpass")
hold on
plot(vhdlout_hp,'b')
plot(test_hp, Color='r')
hold off
subplot(2,2,2)
title("Lowpass")
hold on
plot(vhdlout_lp,'b')
plot(test_lp, Color='r')
hold off
subplot(2,2,3)
title("Error highpass")
plot(error_hp, 'y')

subplot(2,2,[4,4])
title("error lowpass")
plot(error_lp, 'g')


%%sound(sample_out);
