#!/bin/bash

# runs kdialog to confirm user's intent
kdialog --warningyesnocancel "Are you sure you want to reset your cycle?"

# ifelse for user choice
# if yes (0) then previous estrogen injection date log is removed
# runs the estro cycle script to start a new cycle
if [ $? = 0 ]; then
    echo "reseting injection cycle..."
    # delete the previous estrogen cycle date log
    rm ~/.estrogen-cycle-dummy
    # run estro-cycle.sh to start new cycle
    estro-cycle.sh
    echo "Injection cycle reset"
else 
    echo "Okay, keeping current ~/.estrogen-cycle log intact."
fi