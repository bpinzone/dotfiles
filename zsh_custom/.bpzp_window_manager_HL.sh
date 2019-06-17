# Window Manager
window_env_path=$window_path/window-env
function before_window {
	DIR_BEFORE_WINDOW_MANAGER_COMMAND=$(pwd)
	cd $window_env_path
	source ./bin/activate
}
function after_window {
	deactivate
	cd $DIR_BEFORE_WINDOW_MANAGER_COMMAND
}
function sw {
	# Save Windows
	before_window
	python3 ./window_manager/grab.py $1
	after_window
}
function mw {
	# Move Windows
	before_window
	python3 ./window_manager/set.py $1
	after_window
}
