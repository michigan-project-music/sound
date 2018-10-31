

while(1){
    
    // declare the object which will store the sound file, and pass it through tothe dac
    SndBuf buffy => PRCRev r => dac;
    
    Delay del[3];
    
    //Oops delay should be array
    input => del[0] => dac;
    input => del[1] => dac;
    input => del[2] => dac;
    
    (.5/8.)::second => d.delay;
    
    .2 => r.mix;

   //me.dir()+"samples/percussion/bass-drum__025_mezzo-forte_bass-drum-mallet.mp3" => buffy.read; 
   me.dir()+"bass-drum__025_mezzo-forte_bass-drum-mallet.wav" => buffy.read; 

   1 => buffy.gain; 
   1 => buffy.rate;    
    
   .5::second => now;  
    
    
}