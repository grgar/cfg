function mkcd --description "mkdir and cd"
	mkdir $argv[1]
	cd $argv[1]
end

function gif
	set name (basename "$argv[1]")
	ffmpeg -i "$argv[1]" -vf "fps=60,scale=-1:-1:flags=lanczos,split[s0][s1];[s0]palettegen[p];[s1][p]paletteuse" -loop 0 -f gif - | gifsicle -i --delay 2 > ~/Downloads/"$name".gif
end
