# estrogen-injection-tracker
A couple short, slapped-together scripts that let me keep track of my injection cycle.

# Dependencies
- KDE Plasma "command-output" widget or some other widget setup like eww or even waybar.
- kdialog

# How to use it

Copy estro-cycle.sh and estro-cycle-reset.sh scripts to your /usr/bin/ directory

Use "command output" widget configuration to run esto-cycle.sh periodically. Set "on-click" behavior to run estro-cycle-reset.sh to reset the tracker.

Click widget to reset on injection day.

# What's next? 

I want to make my own widget and and popup config / reset UI. 

I would also like to make the two scripts one so that i can allow: "estro-cycle --reset" to function as the reset 


