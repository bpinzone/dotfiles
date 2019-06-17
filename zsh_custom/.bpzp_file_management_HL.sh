# Manage Files

# Dropbox all files of type into dropbox tmp folder
function dbt {
	cp *.$1 $db_tmp_path
}

# Clean VSCode C++ Project
# Except delete git repo.
function create_cvsccpp {
	# Create VSCode CPP project
	cp -r $vsccpp_path ./new_vsccpp_project
	rm -f ./new_vsccpp_project/.gitignore
	rm -rf ./new_vsccpp_project/.git
	rm -f ./new_vsccpp_project/readme.txt
}

# Resume Synchronization
resume_name="Ben_Pinzone_Resume.pdf"
resume_origin_path=~/Documents/@MAIN_DOCUMENTS/Resume_and_College_Stuff/Newest_Resume/
resume_repo_path=$repos_path/Other/Resume/
resume_web_path=$web_path/downloads/
function sync_resume {
	if [ -f ${resume_repo_path}${resume_name} ]; then
		rm ${resume_repo_path}${resume_name}
	fi
	if [ -f ${resume_web_path}${resume_name} ]; then
		rm ${resume_web_path}${resume_name}
	fi
	cp $resume_origin_path$resume_name $resume_repo_path
	cp $resume_origin_path$resume_name $resume_web_path
}

# Convert markdown file to pdf
function md_to_pdf {
	# Usage $md_to_pdf <md file name> <target pdf name>
	margin="15"
	markdown "$1" | htmldoc --cont --headfootsize 8.0 --format pdf14 --top $margin --bottom $margin --left $margin --right $margin - > "$2"
}
# Notes To Pdf
function ntp {
	if [ -d "pdf" ] ; then
		rm pdf/*
	else
		mkdir pdf
	fi
	md_files=$(ls *.md)
	for md_file in $md_files ; do
		md_to_pdf $md_file pdf/$md_file.pdf
	done

}

# Unity
alias scripts="cd Assets/Scripts/"
unity_template_path="/Applications/Unity/Hub/Editor/2019.1.2f1/Unity.app/Contents/Resources/ScriptTemplates/81-C#\ Script-NewBehaviourScript.cs.txt"
alias unity_template="code $unity_template_path"
function clean_unity {
	if [ -d "Library" ]; then
		rm -r Library
	fi
	if [ -d "Temp" ]; then
		rm -r Temp
	fi
	if [ -d "obj" ]; then
		rm -r obj
	fi
}
