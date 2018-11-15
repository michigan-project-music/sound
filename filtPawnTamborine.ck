2::second => dur T;
T - (now %T) + 1::second => now;

// declare the object which will store the sound file, and pass it through tothe dac
SndBuf buffy => PRCRev r => dac;

while(1){

   //me.dir()+"samples/percussion/bass-drum__025_mezzo-forte_bass-drum-mallet.mp3" => buffy.read; 
   me.dir()+"tambourine__025_forte_hand.wav" => buffy.read; 

   0.5 => buffy.gain; 
   .5 => buffy.rate;    

   .5 => float rate;
   /*
   for(0 => int i; i < 2000; ++i){
       rate => buffy.rate;
       .001 +=> rate;
       i::ms => now;  
   }
   */
   2::second => now;
}

