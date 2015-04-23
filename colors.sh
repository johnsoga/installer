# Reset
Normal='\033[0m'		# No Color

# Regular Colors
Black='\033[0;30m'		# Black
Red='\033[0;31m'		# Red
Green='\033[0;32m'		# Green
Yellow='\033[0;33m'		# Yellow
Blue='\033[0;34m'		# Blue
Purple='\033[0;35m'		# Purple
Cyan='\033[0;36m'		# Cyan
White='\033[0;37m'		# White

# Bold Colors
BBlack='\033[1;30m'		# Black
BRed='\033[1;31m'		# Red
BGreen='\033[1;32m'		# Green
BYellow='\033[1;33m'	# Yellow
BBlue='\033[1;34m'		# Blue
BPurple='\033[1;35m'	# Purple
BCyan='\033[1;36m'		# Cyan
BWhite='\033[1;37m'		# White

# Underline
UBlack='\033[4;30m'		# Black
URed='\033[4;31m'		# Red
UGreen='\033[4;32m'		# Green
UYellow='\033[4;33m'	# Yellow
UBlue='\033[4;34m'		# Blue
UPurple='\033[4;35m'	# Purple
UCyan='\033[4;36m'		# Cyan
UWhite='\033[4;37m'		# White

# Background
On_Black='\033[40m'		# Black
On_Red='\033[41m'		# Red
On_Green='\033[42m'		# Green
On_Yellow='\033[43m'	# Yellow
On_Blue='\033[44m'		# Blue
On_Purple='\033[45m'	# Purple
On_Cyan='\033[46m'		# Cyan
On_White='\033[47m'		# White

# High Intensity
IBlack='\033[0;90m'		# Black
IRed='\033[0;91m'		# Red
IGreen='\033[0;92m'		# Green
IYellow='\033[0;93m'	# Yellow
IBlue='\033[0;94m'		# Blue
IPurple='\033[0;95m'	# Purple
ICyan='\033[0;96m'		# Cyan
IWhite='\033[0;97m'		# White

# Bold High Intensity
BIBlack='\033[1;90m'		# Black
BIRed='\033[1;91m'		# Red
BIGreen='\033[1;92m'		# Green
BIYellow='\033[1;93m'	# Yellow
BIBlue='\033[1;94m'		# Blue
BIPurple='\033[1;95m'	# Purple
BICyan='\033[1;96m'		# Cyan
BIWhite='\033[1;97m'		# White

# High Intensity backgrounds
On_IBlack='\033[0;100m'	# Black
On_IRed='\033[0;101m'	# Red
On_IGreen='\033[0;102m'	# Green
On_IYellow='\033[0;103m'	# Yellow
On_IBlue='\033[0;104m'	# Blue
On_IPurple='\033[10;95m'	# Purple
On_ICyan='\033[0;106m'	# Cyan
On_IWhite='\033[0;107m'	# White

# Colored Echo
echo_Nred() { echo -e "${BRed}${1}${Normal}"; }
echo_Ncyan(){ echo -e "${BCyan}${1}${Normal}"; }
echo_Nblue() { echo -e "${BBlue}${1}${Normal}"; }
echo_Nblack() { echo -e "${BBlack}${1}${Normal}"; }
echo_Nwhite() { echo -e "${BWhite}${1}${Normal}"; }
echo_Npurple(){ echo -e "${BPurple}${1}${Normal}"; }
echo_Ngreen() { echo  -e "${BGreen}${1}${Normal}"; }
echo_Nyellow() { echo -e "${BYellow}${1}${Normal}"; }

# Colored Echo (no newline)
echo_red() { echo -en "${BRed}${1}${Normal}"; }
echo_cyan(){ echo -en "${BCyan}${1}${Normal}"; }
echo_blue() { echo -en "${BBlue}${1}${Normal}"; }
echo_black() { echo -en "${BBlack}${1}${Normal}"; }
echo_green() { echo -en "${BGreen}${1}${Normal}"; }
echo_white() { echo -en "${BWhite}${1}${Normal}"; }
echo_purple(){ echo -en "${BPurple}${1}${Normal}"; }
echo_yellow() { echo -en "${BYellow}${1}${Normal}"; }

# Colored prtinf
printf_red() { printf "${BRed}%${2}b${Normal}" "$1"; }
printf_cyan(){ printf "${BCyan}%${2}b${Normal}" "$1"; }
printf_blue() { printf "${BBlue}%${2}b${Normal}" "$1"; }
printf_black() { printf "${BBlack}%${2}b${Normal}" "$1"; }
printf_green() { printf "${BGreen}%${2}b${Normal}" "$1"; }
printf_white() { printf "${BWhite}%${2}b${Normal}" "$1"; }
printf_purple(){ printf "${BPurple}%${2}b${Normal}" "$1"; }
printf_yellow() { printf "${BYellow}%${2}b${Normal}" "$1"; }

printfc() {
	color=$2
	printf "${!color}%${3}b${Normal}" "$1"
}
