
2::second => dur T;
T - (now %T) => now;

// declare the object which will store the sound file, and pass it through tothe dac
SndBuf buffy => PRCRev r => dac;

while(1){
    
    .2 => r.mix;

   //me.dir()+"samples/percussion/bass-drum__025_mezzo-forte_bass-drum-mallet.mp3" => buffy.read; 
   me.dir()+"timpani.wav" => buffy.read; 

   1 => buffy.gain; 
   1 => buffy.rate;    
    
   2::second => now;  
    
}

