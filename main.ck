MidiIn min;
MidiMsg msg;

//open midi receiver, exit on fail
if(!min.open(0)){
    me.exit();
}

int id[32];
for(0 => int i; i < 32; ++i){
    0 => id[i];
}




while(1){
    //wait on midi event
    min => now;

    //receive midimsgs
    while(min.recv(msg)){
        //print content
	<<< msg.data1, msg.data2, msg.data3 >>>;

	//Here we will trigger a function based on the midi input
	//for example, if we get a 5 and 5 corresponds to queen, we do
	if (msg.data1 != 128){
	if (msg.data2 == 37){
	    Machine.add("whitePawns/pawnTamborine.ck") => id[30];
	   }
	if (msg.data2 == 38){
	    Machine.add("whitePawns/shakerPawn.ck") => id[31];
	   }
	if (msg.data2 == 39){
	    Machine.add("whitePawns/snarePawn.ck") => id[2];
	   }
	if (msg.data2 == 40){
	    Machine.add("whitePawns/snarePawnFriend.ck") => id[3];
	   }
	if (msg.data2 == 41){
	    Machine.add("whitePawns/timpaniPawn.ck") => id[4];
	   }
	if (msg.data2 == 42){
	    Machine.add("whitePawns/trainPawn.ck") => id[5];
	   }
	if (msg.data2 == 43){
	    Machine.add("whitePawns/woodblockPawn.ck") => id[6];
	   }
	if (msg.data2 == 44){
	    Machine.add("whitePawns/woodblockPawnFriend.ck") => id[7];
	   }
	if (msg.data2 == 45){
	    Machine.add("blackPawns/filtPawnTamborine.ck") => id[8];
	   }
	if (msg.data2 == 46){
	    Machine.add("blackPawns/shakerPawn.ck") => id[9];
	   }
	if (msg.data2 == 47){
	    Machine.add("blackPawns/snarePawn.ck") => id[10];
	   }
	if (msg.data2 == 48){
	    Machine.add("blackPawns/snarePawnFriend.ck") => id[11];
	   }
	if (msg.data2 == 49){
	    Machine.add("blackPawns/timpaniPawn.ck") => id[12];
	   }
	if (msg.data2 == 50){
	    Machine.add("blackPawns/trainPawn.ck") => id[13];
	   }
	if (msg.data2 == 51){
	    Machine.add("blackPawns/woodblockPawn.ck") => id[14];
	   }
	if (msg.data2 == 52){
	    Machine.add("blackPawns/woodblockPawnFriend.ck") => id[15];
	   }
	if (msg.data2 == 53){
	    Machine.add("blackPieces/bishop1.ck") => id[16];
	   }
	if (msg.data2 == 54){
	    Machine.add("blackPieces/bishop3.ck") => id[17];
	   }
	if (msg.data2 == 55){
	    Machine.add("blackPieces/knight1.ck") => id[18];
	   }
	if (msg.data2 == 56){
	    Machine.add("blackPieces/knight3.ck") => id[19];
	   }
	if (msg.data2 == 57){
	    Machine.add("blackPieces/queen.ck") => id[20];
	   }
	if (msg.data2 == 58){
	    Machine.add("blackPieces/rook1.ck") => id[21];
	   }
	if (msg.data2 == 59){
	    Machine.add("blackPieces/rook3.ck") => id[22];
	   }
	if (msg.data2 == 60){
	    Machine.add("whitePieces/bishop2.ck") => id[23];
	   }
	if (msg.data2 == 61){
	    Machine.add("whitePieces/bishop4.ck") => id[24];
	   }
	if (msg.data2 == 62){
	    Machine.add("whitePieces/knight2.ck") => id[25];
	   }
	if (msg.data2 == 63){
	    Machine.add("whitePieces/knight4.ck") => id[26];
	   }
	if (msg.data2 == 64){
	    Machine.add("whitePieces/queen.ck") => id[27];
	   }
	if (msg.data2 == 65){
	    Machine.add("whitePieces/rook2.ck") => id[28];
	   }
	if (msg.data2 == 66){
	    Machine.add("whitePieces/rook4.ck") => id[29];
	   }
	if (msg.data2 == 84){
	    <<<"KINGS DEAD">>>;
	    for(0 => int i; i < 32; ++i){
	        Machine.remove(id[i]);
	    }
	    for(2 => int i; i < 100; ++i){
	        Machine.remove(i);
	    }
	    Machine.add("king.ck") => id[29];
	    //shamelessly stolen from super mario world ending theme
	   }
	if (msg.data2 == 83){
	    <<<"KINGS DEAD">>>;
	    for(0 => int i; i < 32; ++i){
	        Machine.remove(id[i]);
	    }
	    for(2 => int i; i < 100; ++i){
	        Machine.remove(i);
	    }
	    Machine.add("king.ck") => id[29];
	    //shamelessly stolen from super mario world ending theme
	   }
	   }

    }


}

