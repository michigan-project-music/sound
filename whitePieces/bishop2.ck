
2::second => dur T;
T - (now %T) => now;

// declare the object which will store the sound file, and pass it through tothe dac
SndBuf buffy => PRCRev r => dac;
me.dir()+"bishop2.wav" => buffy.read; 


while(1){

    //this is probably a better way to restart sample
    0 => buffy.pos;
    
    0 => r.mix;
   
   1 => float gain;
   gain => buffy.gain; 

    
   4::second => now;  
    
}

