# Create and Edit
function cv {
	# Create and edit with vim.
	touch $1
	vim $1
}
function cc {
	# Create and edit with vs code.
	touch $1
	code $1
}

# Edit Specific Files
# Notes
alias notes="code $notes_path"
alias jevent="code $journal_path/events.txt"
alias mega="code $journal_path/mega-recollection.txt"
alias pw="vim $pinzone_w_path"
alias vimcheat="vim $vim_cheat_path"
# Config
alias bp="vim ~/.bash_profile"
alias vimrc="vim ~/.vimrc"
alias zshrc="code ~/.zshrc"
# CPU
alias todo="vim $macsetup_path/todo.txt"
alias commands="vim $macsetup_path/commands.txt"
alias short="code $macsetup_path/shortcuts.txt"