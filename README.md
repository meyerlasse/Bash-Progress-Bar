# Bash-Progress-Bar

A simple Bash function to print a progress bar, adapting to the width of the terminal.<br>

With every new call, the function overwrites the last line, so you have one line with the updating progress bar. <b>Make sure to print a new line ("\n") before using this function for the first time!</b>

Input: current status & maximal status

Example:

    $ _progress_bar 14 56

Output:

    14/56 [########---------------------------] 25%
