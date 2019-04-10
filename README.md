# Musical Chessboard Sound Design

## ChucK
This project uses ChucK, a music programming language (http://chuck.cs.princeton.edu/).  ChucK is "strongly timed" ie it has a very precise timing system.  Although many sounds can be generated with ChucK, this project mainly uses samples.

## Using the code
After connecting a MIDI device (in our case, a custom chessboard that outputs MIDI data), run main.ck.  If you have ChucK installed on the command line, this is done by doing "chuck main.ck".  

## How it works
main.ck takes in MIDI data, and calls other .ck files based on the input. For example, when a pawn dies, a MIDI message is sent from the chessboard to indicate this, and that pawn's .ck file is activated from main.ck.

Each piece file has a couple lines at the top used to sync it with the other files (120 bpm).  Then in a while loop, the samples are called.
