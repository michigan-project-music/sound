MidiIn min;
MidiMsg msg;

//open midi receiver, exit on fail
if(!min.open(0)){
    me.exit();
}

while(1){
    //wait on midi event
    min => now;

    //receive midimsgs
    while(min.recv(msg)){
        //print content
	<<< msg.data1, msg.data2, msg.data3 >>>;

	//Here we will trigger a function based on the midi data.
	//So, if midi data was a 4, that could correspond to pawn4,
	//so a tamborine function would be triggered.

	//right now all the functions are in separate files, for ease
	//of testing, but when those are all done, they will be copied
	//to this file.  

    }
}

