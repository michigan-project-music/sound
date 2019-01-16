
2::second => dur T;
T - (now %T) => now;

// declare the object which will store the sound file, and pass it through tothe dac
SndBuf buffy => PRCRev r => Dyno d => dac;
   me.dir()+"timpani.wav" => buffy.read; 

d.limit();

//to sync with other timpani
2::second => now;

while(1){
    
   0 => buffy.pos;
   0 => r.mix;

   .6 => float gain;
   gain => buffy.gain; 
   1 => buffy.rate;    

   .5::second => now;

   for(0 => int i; i < 1000; ++i){
      .85/1000. -=> gain;
      gain => buffy.gain;
      .5::ms => now;
   }

    
   3::second => now;  
    
}

