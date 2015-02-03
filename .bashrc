# binds cd to ls so it outputs the dir
function cd {
	builtin cd "$@" && ls
}

# lists the files within that dir structure
# that the string searched is in
function fig {
	sudo find $1 -type f -exec grep -l "$2" {} +
}

# simple function to automate grepping history
function hig {
	history | grep "$1"
}
