if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Start X at login
if status --is-login
  if test -z "$DISPLAY" -a $XDG_VTNR = 1
    exec startx -- -keeptty
  end
end

# Ui for fish
set -g -x fish_greeting 'Welcome lvs'

set green (set_color green)
set red (set_color red)

# Fish git prompt
set __fish_git_prompt_show_informative_status 1
set __fish_git_prompt_showdirtystate 1
set __fish_git_prompt_showstashstate 1
set __fish_git_prompt_showuntrackedfiles 1
set __fish_git_prompt_showupstream 1
set __fish_git_prompt_showcolorhints 1
set __fish_git_prompt_color_branch 33cc33
set __fish_git_prompt_color_upstream_ahead green
set __fish_git_prompt_color_upstream_behind red

# Status Chars
set __fish_git_prompt_char_dirtystate ' '
set __fish_git_prompt_char_stagedstate ' '
set __fish_git_prompt_char_untrackedfiles ' '
set __fish_git_prompt_char_stashstate 'a'
set __fish_git_prompt_char_upstream_ahead '+'
set __fish_git_prompt_char_upstream_behind '-'


function fish_prompt
	set_color ff2040
	printf '@%s' (whoami)
	set_color normal

	set_color 2040ff
	printf '#%s' (prompt_hostname)
	set_color normal

  	printf '%s ' (__fish_git_prompt)
	
	set_color 40ff20
	printf '%s ﰲ ' (prompt_pwd)
	set_color normal
end


# Alias
alias vi nvim
alias ll "ls -la"
