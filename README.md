Dreamcatcher
============

Dreamcatcher listens for characters from the keyboard and ignores anything that is not text. Features include:
 
* When enter is pressed, all characters are appended as a new line to `current.txt 
* When an EOF is sent, characters are appended and `current.txt` is renamed to `<timestamp>.txt`, essentially saving the current file and starting a new ine 

And that's all.  It is intended to be run without a display (keyboard only), hence the minimal interface.
