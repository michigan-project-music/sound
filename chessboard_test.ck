
2::second => dur T;
T - (now %T) => now;

// declare the object which will store the sound file, and pass it through tothe dac
SndBuf buffy => PRCRev r => dac;

0 => int playNote; //for coordination with other snare pawn}


class Chessboard{
    
    fun void main_loop(){
        
                play_music("timpani.wav");
                spork ~ play_music("snare.wav");
        
              
         
    }
    
    fun void play_music(string file){
             
        0 => r.mix;
        
        me.dir()+file => buffy.read; 
        
        0.3 => buffy.gain;
        
          
        1 => buffy.rate;    
        
                         .25::second => now; 

    }
    
}

Chessboard chessboard;
//main game loop
while(1){
    chessboard.main_loop();
}



while(0){
    
    0 => r.mix;

   me.dir()+"snare.wav" => buffy.read; 

    if(playNote == 0){
        0 => buffy.gain;
	1 => playNote;
    }
    else{
        .3 => buffy.gain;
	0 => playNote;
    }
    
   1 => buffy.rate;    
    
   .25::second => now;  

    
}



