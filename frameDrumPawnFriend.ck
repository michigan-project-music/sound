
2::second => dur T;
T - (now %T) => now;

// declare the object which will store the sound file, and pass it through tothe dac
SndBuf buffy => PRCRev r => dac;

1 => int playNote;

while(1){
    
    0 => r.mix;

   me.dir()+"frame_drum.wav" => buffy.read; 

    if(playNote == 0){
        0 => buffy.gain;
	1 => playNote;
    }
    else{
        .6 => buffy.gain;
	0 => playNote;
    }
    
   Std.rand2f( 0.2, 1.0 ) => buffy.rate;    
   .5::second => now;  
    
}

