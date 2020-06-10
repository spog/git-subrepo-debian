if [ -n "${GIT_TESTING_PORCELAIN_COMMAND_LIST}" ]; then
	export GIT_TESTING_PORCELAIN_COMMAND_LIST="$(echo $GIT_TESTING_PORCELAIN_COMMAND_LIST | sed 's% subrepo%%g') subrepo"
else
	export GIT_TESTING_PORCELAIN_COMMAND_LIST="$(git --list-cmds=list-mainporcelain,others,nohelpers,alias,list-complete,config) subrepo"
fi
