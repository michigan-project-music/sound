
2::second => dur T;
T - (now %T) + 1.5::second => now;

// declare the object which will store the sound file, and pass it through tothe dac
SndBuf buffy => dac;

while(1){
    

   me.dir()+"train.wav" => buffy.read; 

   1 => buffy.gain; 
    
   2::second => now;  
    
}

