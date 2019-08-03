# Go to Project
function pj {
	# cd to <class> <project> directory
	# Usage pj <class number> <project number>
	cd $repos_path/Classes/EECS${1}/EECS${1}P${2}
}
function pjc {
	# Open project in VSCode.
	pj $1 $2
	code .
}
function pjo {
	# Open project in Finder.
	pj $1 $2
	open .
}
function gp {
    cd $graphics_repo_path/Graphics$1
}

# Change Directory to Specific Paths
# Basic
alias home="cd ~"
alias desk="cd $desk_path"
alias down="cd $downloads_path"
alias bpzp="cd $zsh_custom_path"

# Dropbox
alias dropbox="cd $dropbox_path"

# Repos & Misc Projects
alias repos="cd $repos_path"
alias pp="cd $pp_path"
alias caen_r="cd $caen_r_path"
alias web="cd $web_path"
alias pro="cd $pro_path"
alias vsccpp="cd $vsccpp_path"
alias graphics="cd $graphics_path"

# Game Projects
alias multi="cd $multi_path"
alias snake="cd $snake_path"
alias zelda="cd $zelda_path"
alias falcon="cd $falcon_path"
alias flagshift="cd $flagshift_path"
alias hyper="cd $hyper_path"

# Computer Projects
alias macsetup="cd $macsetup_path"
alias dotfiles="cd $dotfiles_path"
alias window="cd $window_path"

# Misc
alias bitbar="cd $bitbar_path"
alias workdb="cd $dp_path/Work"
alias lec_281="cd $lec_281_path"