autoload -Uz compinit
compinit

# Enable liquidprompt if installed via brew
if [ -f /usr/local/share/liquidprompt ]; then 
	. /usr/local/share/liquidprompt
fi
