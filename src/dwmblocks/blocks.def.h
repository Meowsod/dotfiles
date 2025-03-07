//Modify this file to change what commands output to your statusbar, and recompile using the make command.
static const Block blocks[] = {
    /*Icon*/	/*Command*/		/*Update Interval*/	/*Update Signal*/
    {" [ ^c#f4f492^ ", "cat $HOME/.recording", 0, 3},

    {"󰃰 ^c#9dd2de^", "task _get $(task next limit:1 | tail -n +4 | head -n 1 | sed 's/^ //' | cut -d ' ' -f1).description", 1080, 0},

    {" ^c#9dd2de^", "[ -s /home/msozod/.drive_status ] && cat /home/msozod/.drive_status || echo \"N/A\"", 0, 1},

    {"󰕾 ^c#9dd2de^", "amixer sget Master | awk -F'[][]' '/Left:/ {volume=$2} /off/ {mute=\"(M)\"} END {if (!mute) mute=\"(O)\"; print volume, mute}'", 0, 2},

    {" ^c#9dd2de^", "df -h / | awk 'NR==2 {print $4}'", 50, 0},

    {"󰒋 ^c#9dd2de^", "free -h | awk '/^Mem/ { print $3\"/\"$2 }' | sed s/i//g", 30, 0},

    {"󰥔 ^c#9dd2de^", "date '+%a, %b %d %H:%M ^d^] '", 60, 0}, // time, once every minute
};

//sets delimiter between status commands. NULL character ('\0') means no delimiter.
static char delim[] = "^d^ ] [^c#f4f492^ ";
static unsigned int delimLen = 20;
