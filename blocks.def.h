//Modify this file to change what commands output to your statusbar, and recompile using the make command.
static const Block blocks[] = {
	/*Icon*/	/*Command*/		/*Update Interval*/	/*Update Signal*/
    {"",   "bash $HOME/dwmblocks/scripts/nowplaying.sh", 1,   2},
    {"",   "bash $HOME/dwmblocks/scripts/volume.sh",     0,   1},
    {" ", "df / | sed -n '2{p;q}' | awk '{print $5}'",  300, 0},
    {"",   "bash $HOME/dwmblocks/scripts/cputemp.sh",    3,   0},
    {" ", "bash $HOME/dwmblocks/scripts/cpuusage.sh",   3,   0},
    {" ", "bash $HOME/dwmblocks/scripts/memory.sh",     3,   0},
    {"",   "bash $HOME/dwmblocks/scripts/internet.sh",   3,   0},
    {" ", "date +%H:%M ",                               60,  0},
};

//Sets delimiter between status commands. NULL character ('\0') means no delimiter.
static char delim[] = "  |  ";
static unsigned int delimLen = 7;
