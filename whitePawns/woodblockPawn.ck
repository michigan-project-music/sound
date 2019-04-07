
2::second => dur T;
T - (now %T) => now;

SndBuf buffy => PRCRev r => dac;
me.dir()+"woodblock.wav" => buffy.read; 

0 => int counter;

while(1){

    0 => buffy.pos;
    0 => r.mix;

    if(counter != 7){
        0 => buffy.gain;
	++counter;
    }
    else{
    	0 => counter;
        .45 => buffy.gain;
    }
    
   1 => buffy.rate;    
    
   .25::second => now;  

}

