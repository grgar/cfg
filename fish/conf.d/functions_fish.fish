function fish_prompt
	#set_color brblack
	#echo -n "["(date "+%H:%M")"] "
	#set_color blue
	#echo -n (hostname)
	if [ $PWD != $HOME ]
		set_color brblack
		#echo -n ':'
		#set_color yellow
		#echo -n (basename $PWD)
		echo -n " "(prompt_pwd)
	end
	printf '%s' (__fish_git_prompt)
	set_color brblack
	echo -n ' ❯ '
	set_color normal
end

function fish_greeting
	if [ $PWD != $HOME -a $PWD != "/" ]
		echo "$PWD"
	end
end
