//Modify this file to change what commands output to your statusbar, and recompile using the make command.
static const Block blocks[] = {
	/*Icon*/	/*Command*/		/*Update Interval*/	/*Update Signal*/
	{"",   "bash $HOME/dwmblocks/scripts/volume.sh",     0, 1},
    {"",   "date +%H:%M:%S",                             1, 0},
};

//Sets delimiter between status commands. NULL character ('\0') means no delimiter.
static char delim[] = " | ";
static unsigned int delimLen = 5;
