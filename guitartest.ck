
2::second => dur T;
T - (now %T) => now;



// declare the object which will store the sound file, and pass it through tothe dac
SndBuf buffy => PRCRev r => dac;


   me.dir()+"estring.wav" => buffy.read; 
    buffy.freq() => float freq; 
    5 => int note; 
    

  MidiIn min;
    MidiMsg msg;
    


while(1){
    
    

// open midi receiver, exit on fail
if ( !min.open(0) ) me.exit(); 


// wait on midi event
min => now;

while( min.recv( msg ) )
{
    // print content
    <<< msg.data1, msg.data2, msg.data3 >>>;
}



    
    .2 => r.mix;

   //me.dir()+"samples/percussion/bass-drum__025_mezzo-forte_bass-drum-mallet.mp3" => buffy.read; 

   1 => buffy.gain; 
   1 => buffy.rate; 
   
   me.dir()+"estring.wav" => buffy.read; 


   freq => buffy.freq;

    
   0.5::second => now;  
   
     if (note == 7 || note == 4) freq * 1.059 => freq;
   else freq * 1.122 => freq;
   
   note + 1 => note;
   if (note > 7){
       1 => note;   
   }
   
    
}

