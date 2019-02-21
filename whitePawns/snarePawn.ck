
2::second => dur T;
T - (now %T) => now;

// declare the object which will store the sound file, and pass it through tothe dac
SndBuf buffy => PRCRev r => dac;

0 => int playNote; //for coordination with other snare pawn

while(1){
    
    0 => r.mix;

   me.dir()+"snare.wav" => buffy.read; 

    if(playNote == 0){
        0 => buffy.gain;
	1 => playNote;
    }
    else{
        .3 => buffy.gain;
	0 => playNote;
    }
    
   1 => buffy.rate;    
    
   .25::second => now;  

    
}

