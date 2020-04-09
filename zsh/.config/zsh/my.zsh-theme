#############################################################################
#                                                                           #
# This file contains my personal zsh prompt.                                #
#                                                                           #
# @package    dotfiles/zsh                                                  #
# @filename   .config/zsh/my.zsh-theme                                      #
# @author     Amir Heinisch <mail@amir-heinisch.de>                         #
# @link       https://amir-heinisch.de                                      #
# @version    1.0 (09/04/2020)                                              #
#                                                                           #
#############################################################################

# NOTE! POWERLINE gets set with my generic shell stuff..

if [ "$POWERLINE" -eq "1" ]; then
	DEL=$'\ue0b0'
	PROMPT="%K{9}%F{15} NORMAL %K{242}%F{9}$DEL%K{242}%F{15} [%n@%m] %K{248}%F{242}$DEL%K{248}%F{15} [%d] %K{15}%F{248}$DEL%K{15}%F{248} » %K{8}%F{15}$DEL%f%k "
else
	PROMPT='%K{9}%F{15} NORMAL %K{242} [%n@%m] %K{248} [%d] %K{15}%F{248} » %f%k '
fi
