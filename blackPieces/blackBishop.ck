4::second => dur T;
T - (now %T) + 0.5::second => now;

SndBuf buffy1 => dac;
SndBuf buffy2 => dac;
me.dir()+"bellLower1.wav" => buffy1.read;
me.dir()+ "bellLower1.wav"=> buffy2.read;

0 => buffy2.gain;

0 => int counter;
while(1){
    
    if (counter % 2 == 0){
        0 => buffy1.pos;
        1 => buffy1.gain;
    }else{
        0 => buffy2.pos;
        1 => buffy2.gain;
    }
    counter++;
    4::second => now;
    
}
