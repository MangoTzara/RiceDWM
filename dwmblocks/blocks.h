// Modify this file to change what commands output to your statusbar, and
// recompile using the make command.
// Modify this file to change what commands output to your statusbar, and
// recompile using the make command.
static const Block blocks[] = {
	/*Icon*/	/*Command*/		/*Update Interval*/	/*Update Signal*/
	{"", "./RiceDWM/dwmblocks/mywifi", 7, 0},
	{"", "./RiceDWM/dwmblocks/battery.sh",7 ,0 },
	{": ", "./RiceDWM/dwmblocks/sb-cpubars.sh", 5, 0},
	{"", "./RiceDWM/dwmblocks/timeetc", 20, 0},
	{"", "./RiceDWM/dwmblocks/ram", 5, 0},
	{"","./RiceDWM/dwmblocks/sb-volume.sh",7 ,0}
};

// Sets delimiter between status commands. NULL character ('\0') means no delimiter.
static char delim[] = " | ";
static unsigned int delimLen = 5;


