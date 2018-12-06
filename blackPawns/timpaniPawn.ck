
2::second => dur T;
T - (now %T) => now;

// declare the object which will store the sound file, and pass it through tothe dac
SndBuf buffy => PRCRev r => Dyno d => dac;

d.limit();

0 => r.mix;

//to sync with other timpani
2::second => now;

while(1){
    

   me.dir()+"timpani.wav" => buffy.read; 

   .85 => buffy.gain; 
   1 => buffy.rate;    
    
   4::second => now;  
    
}

