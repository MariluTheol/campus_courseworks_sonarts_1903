(
var myDurs = Pseq([1/2, 1, 1, 1/2, 1, 2, 2, 1, 1, 1, 1, 1, Pn(1/2, 4), 1, 1/2, 1, 1, 1/2,1/2, 2], inf) * 0.4;

~upperMelody =  Pbind(
	\midinote, Pseq([76, 76, 76, 72, 76, 79, 67, 72, 67, 64, 69, 71, 70, 69, 67, 76, 79, 81, 77, 79, 76, 72, 74, 71], 2),
	\dur, myDurs
);

~lowerMelody =  Pbind(
	\midinote, Pseq([50, 50, 50, 50, 50, 55, 55, 55, 52, 48, 53, 55, 54, 53, 52, 60, 64, 65, 62, 64, 60, 57, 59, 55], 2),
	\dur, myDurs
);
)

(
~player1 = ~upperMelody.play;
~player2 = ~lowerMelody.play;
)


~player1.stop;
~player2.stop;



s.boot;



