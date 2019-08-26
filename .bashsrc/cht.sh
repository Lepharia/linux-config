# cht.sh
# Wrapper function to query cheat.sh
# Parameters: 
#   -s  --  removes formating (useful for redirection)
#
# Author: Dennis Bonnmann (dennis.bonnmann@materna.de)

function cht(){
	strip_format=false
	queries=""
	# Parameter parsing
	for opt in "$@"; do
		case $opt in
			"-s") strip_format=true ;;
			*) queries="$queries $opt"
		esac
		shift
	done
	# End Parameters
	
	for qry in $queries; do
		if [ $strip_format = true ]; then
			curl cheat.sh/$qry | sed "s/\x1b\[[0-9;]*m//g"
		else
			curl cheat.sh/$qry 
		fi
	done
}
export -f cht
