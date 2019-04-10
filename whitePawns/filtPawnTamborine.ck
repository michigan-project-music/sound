2::second => dur T;
T - (now %T) + 1::second => now;

// declare the object which will store the sound file, and pass it through tothe dac
SndBuf buffy => PRCRev r => dac;
me.dir()+"tambourine__025_forte_hand.wav" => buffy.read; 
.5 => buffy.rate;    

while(1){

   0 => buffy.pos;

   1 => r.gain;
   .2 => buffy.gain; 
   .5::second => now;
   
   1 => float rev;
   for(0 => int i; i < 1000; ++i){
       2./1000. -=> rev;
       rev => r.gain;
       1::ms => now;
   }
   	
   0 => r.gain;
   .5::second => now;
}

