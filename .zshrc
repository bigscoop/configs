source $HOME/.aliases

# Lines configured by zsh-newuser-install
HISTFILE=~/.zsh_history

# кол-во команд, хранимых шеллом в текщей сессии
HISTSIZE=10240

# кол-во команд, которые будут сохранены в истории
SAVEHIST=8192

# все работающие копии zsh будут иметь одинаковую историю
# не беспокойтесь — команды вроде «!» (повтор последней команды) будут использовать
#  только историю текущего шелла
setopt SHARE_HISTORY

# при добавлении в историю новой команды все её дупликаты будут удалены, а команда
#  будет помещена в конец
setopt HIST_IGNORE_ALL_DUPS

# не сохранять команды, начинающиеся с пробела
# очень удобно, если вы вынуждены указать в командной строке имя пользователя,
#  пароль или другую важную информацию — просто поставьте перед командой пробел, и
#  она не попадёт в историю
setopt HIST_IGNORE_SPACE

# команды «history» и «fc» в историю заноситься не будут
setopt HIST_NO_STORE

# левое приглашение — «%» для обычного юзера и «#» — для рута
PROMPT="%# "
# правое приглашение — путь к текущей директории (от ~, если вы где-то в домашней
#  директории, или от /, если вы пошли бродить по системе), отображаемый зелёным
#  цветом
RPROMPT="%{$fg[green]%}%~%{$reset_color%}"

bindkey -e

bindkey '\e[3~' delete-char # del
bindkey ';5D' backward-word # ctrl+left
bindkey ';5C' forward-word #ctrl+right

alias -g getDate='echo $(date +"%Y-%m-%d")'

case $TERM in
 xterm* | rxvt)
  precmd(){print -Pn "\e]0;%n@%m: %~\a"}
 ;;
esac

# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/dima/.zshrc'

autoload -Uz compinit && compinit;
# End of lines added by compinstall
