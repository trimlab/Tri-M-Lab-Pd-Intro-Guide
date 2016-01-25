# Tri-M-Lab-Pd-Intro-Guide
A guide I'm working on to introduce new lab members to Pure Data

Pure data extended is the program you want.
Pure data vanilla has less functionality, but can be installed on anything (linux, rasberry pi's, etc.)

Get Pd Extended at https://puredata.info 

Feel free to e-mail me at sglandry@mtu.edu if you run into any trouble or have any general questions.

OK THE GOOD STUFF
-------------------------------------------------------------------

1-Pd Basics.pd -Learn some basics structure of objects, and controlling the pitch and volume of a sine wave oscillator. 

Then go to the help menu dropdown, Pd Help Browser, Manuals, Start Here/, start-here.pd. Follow the instructions inside the patch. This will teach you how to use "cables" to connect object's outlets to other object's inlets. 

2-Signals controlling signals.pd

3-Additive synthesis and envelopes.pd

4-Linear ramp generators.pd should be before 3-additive synthesis and envelopes. 

6-Metronome and counting.pd

7-A reusable ADSR patch

TestOSCmsg.pd <--- Start here if you just want to learn how to send OSC msg's using Java's oscp5 library and receive them in Pd.
	Just run the processingOSCsketch and the testOSCmsg.pd patch at the same time. Hover your mouse over the processing window after running sketch.
		


______________________________________________________________
Extra stuff:
Loop station
QWERTY keyboard and polyphonic midi controller
Controlling song speed
Pre-made synth PLUTO
______________________________________________________________


Cool guide to make your own synth:
http://libremusicproduction.com/tutorials/creating-simple-synthesizer-pure-data-%E2%80%93-part-i

Explanation for ADSR:
http://libremusicproduction.com/answer/adsr-envelope



TO DO:

MIDI & [makenote]
[random]
FUll step-sequencer
reading in a txt file
reading and playing samples (long, short, playback speed)
panning
[HID]
[key]
lists
effects (delay, distortion, filters, freqshifting, etc. (link the guitarextended website)
link that making real world sounds guide
OSC and networking
quick reusable ADSR patcher and another example w/ gui controls 
Make or find a reusable synth
