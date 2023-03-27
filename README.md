Friends!

Thank you for taking the time to review my Ben Eater-designed 6502 computer project. The inspiration for this project was drawn from the fortune-mod and
cowsay projects found on GitHub and other similar platforms. The primary objective of this project was to have my 6502 computer continuously display 
fortunes, game references, and other amusing phrases on an LCD display, as it sat on a shelf. While the code in fortunesay.s can still be optimized I opted to relase the code now, I strongly encourage you to take the reigns and optimize it on your own. If anyone does intend to reuse any of my code, I request that the following conditions are adhered to:

Critical Points:

    1. Ensure that message bank 1 is not deleted, and add your name to message lines MESSAGE11, MESSAGE12, and MESSAGE13 if any of the original code is
    used.
    
    2. Do not modify or alter the BVR name if my original code is used, meaning that bank 1, message lines MESSAGE14 and MESSAGE15 should remain 
    unmodified.
    
    3. Document any changes made, if possible.

Despite these guidelines, I encourage you to enjoy this project as much as I did. The binary files have also been included for your convenience, and the 
code is designed to work straight out of the box without requiring any modifications. The arduino code on the otherhand, does have some required setup.

The code closely follows how Ben Eater printed characters to his LCD display, as demonstrated in "Connecting an LCD to our computer — 6502 part 4." I
modified his code to jump to the next line after completing the top line and clear the display after completing the second line. I organized my code
and fortunes into "fortune banks," or simply "banks." Banks consist of 15 lines, with each line containing 16 characters and a null-point terminator.
Each message line contains 17 bytes, resulting in a total of 15 lines and 256 total bytes, which is sufficient to fill the X-Register entirely.
I chose this method because using standard iteration through individual message lines would result in too few available fortunes. Organizing the
code into  banks made the code, in my opinion, easier to modify and read.

Additional functionality has been added, such as an interrupt sequence that increments the bank count by one with the help of an Arduino.

The arduino code is intended to be used in tandem with this project to enable wireless bank increments and resets using an IR remote. The code for this can
be found on the same GitHub page. I opted to use an Arduino because pushing a button through a piece of glass is challenging, and doing so requires
breaking the fourth wall. Thus, I decided to use an IR remote to communicate with the Arduino, which will then pull its pins low to initiate an interrupt.

Although there is much more that I would love to do with this project, I believe it is appropriate to release what I have now. Please stay tuned for updates or any suggestions you may have, and feel free to contact me.

Thank you,
CSB
