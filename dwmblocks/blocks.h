// Modify this file to change what commands output to your statusbar, and
// recompile using the make command.
static const Block blocks[] = {
	/*Icon*/	/*Command*/		/*Update Interval*/	/*Update Signal*/
	{"", "/home/mango/dwmblocks/mywifi",7,0},
	{": ", "/home/mango/dwmblocks/sb-cpubars.sh",5,0},
	//{"", "/home/mango/dwmblocks/mybluetooth",20,0},
	{"", "/home/mango/dwmblocks/timeetc",20,0},
	{"", "/home/mango/dwmblocks/ram",5,0},
	//{"", "/home/mango/dwmblocks/mybattery",20,0},
};

// sets delimeter between status commands. NULL character ('\0') means no
// delimeter.
static char delim[] = " | ";
static unsigned int delimLen = 5;
