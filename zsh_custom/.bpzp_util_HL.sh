# Manage osx
alias rebuild_spotlight_index="sudo mdutil -E /"
alias reset_dock="killall -KILL Dock"

# Set iTerm tab name to current directory
precmd() {
  echo -ne "\e]1;${PWD##*/}\a"
}

# Working reset that actually disables scrolling up.
function true_reset {
	clear && printf '\e[3J'
}
alias reset="true_reset"

# Grep Recursively
GREPR_FLAGS="-r -n --color=auto"
alias grepr="grep $GREPR_FLAGS"
function gt {
	# Grep files of certain type.
	# Usage: greptype <file_extension> <search_text> <other flags> <other flags>...
	local file_type="$1" && shift
	local search_text="$1" && shift
	if [ "$file_type" = "all" ] ; then
        echo "wat"
		grepr --include="*" "$search_text" . $@
	else
		grepr --include="*.$file_type" "$search_text" . $@
	fi
}
alias grep_remind='echo "grepr --include="quoted_regex" "quoted_search_text" ."'
alias allgrep="gt all $1 $@"
alias csgrep="gt cs $1 $@"
alias pygrep="gt py $1 $@"
alias cppgrep="gt cpp $1 $@"
alias hgrep="gt h $1 $@"

# Grep Specific Files
function pwg {
	grep -i $1 $pinzone_w_path
}
function bpg {
	grep -i -C1 $1 ~/.bash_profile
}
function vcg {
	grep -i -C1 $1 $vim_cheat_path
}
function sg {
    grep -i -C1 $1 $macsetup_path/shortcuts.txt
}

# Shortcuts for common operations.
alias o="open ./" # Open working directory in finder.
alias c="code ." # Open current working dir in vs code.
alias ca="code --add ." # Open current working dir in last active vs code window.

# Build and run cpp
alias rcp="clear && make clean && make && ./main"

# List Files.
ls_flags=" -Gl " # Enable color, preferred format.
alias ls="ls $ls_flags"
alias l="ls"           # Allow for laziness below
alias la="l -a"        # List all.
alias lh="l -d .?*"    # List hidden only.
alias cl="clear && l"
alias cla="clear && la"
alias clh="clear && lh"
alias ccl='cd "$1" && clear && l'
function lt {
	# List files of a certain type.
	# Usage: ltype <file_extension>"
	local search_pattern=".*\.$1"
	local search_pattern="\.$1$"
	local exclude_pattern="\.\."
	ls -al | grep -E "$search_pattern" | grep -E -v "$exclude_pattern"
}

# Git
alias gs="git status"
alias gb="git branch"
alias gd="git diff"
alias gr="git reset --hard"
alias git_hard="git reset --hard"
alias gc="git clean -fd"
alias grc="git reset --hard && git clean -fd"
alias eig="vim .gitignore"
alias egig="vim ~/.gitignore_global"
alias minor='git add . && git commit -m "minor" && git push'
alias gdraw="git --no-pager diff"
function full {
	git add .
	git commit -m "$1"
	git push
}

# Find
function fid {
	# Find in directory
	find . -iname "*$1*"
}

# VS Code Shortcuts
# Reminders
# code . // Open current folder in vscode.
# code --add <dir> // Adds dir folder to last active window.
alias vsdiff="code --diff $1 $2"

# Command Correction
eval $(thefuck --alias)
alias f="fuck"

# Random
alias math="$ZSH_CUSTOM/./bpzp_math.py"

# Remove last login info.
reset

# Probably don't need.
# Enable Color
# export CLICOLOR=1
# export LESS="-eirMX"
