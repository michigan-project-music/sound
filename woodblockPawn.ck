
2::second => dur T;
T - (now %T) + 1.5::second => now;

// declare the object which will store the sound file, and pass it through tothe dac
SndBuf buffy => PRCRev r => dac;

while(1){
    
    .2 => r.mix;

   me.dir()+"woodblock.wav" => buffy.read; 

   3 => buffy.gain; 
    
   2::second => now;  
    
}

