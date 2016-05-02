#cloning repo to local machine
if [ ! -d /home/$USER/.XAutomation ];then
    git clone https://github.com/zuck007/XAutomation.git /home/$USER/.XAutomation
fi
#color-codes
REDD=`tput setaf 1`
GREN=`tput setaf 2`
YELO=`tput setaf 3`
BLUE=`tput setaf 4`
MGNT=`tput setaf 5`
CYAN=`tput setaf 6`
RESET=`tput sgr0`
#ascii-art
function preinstall()
{
    printf "\n\n"
    echo ${MGNT}                   '                          _____   _ _   _    _          _____ _____   _ _           '                        
    echo ${CYAN}                   '     \  /     /\    |   |   |    (   ) | \  / |    /\     |     |    (   ) |\   |   '
    echo ${REDD}                   '      \/     /__\   |   |   |    (   ) |  \/  |   /__\    |     |    (   ) | \  |   '
    echo ${BLUE}                   '      /\    /    \  |   |   |    (   ) |      |  /    \   |     |    (   ) |  \ |   '
    echo ${YELO}                   '     /  \  /      \ |___|   |    (_ _) |      | /      \  |   __|__  (_ _) |   \|   '


}
function justdoit()
{

    echo "Installing packages used X[scripts] like bs4,requests,mutagen"
    sudo pip install bs4
    sudo pip install requests
    sudo pip install mutagen
printf "\n${GREN}Configuring ~/.bashrc & setting aliases for Xscript\n"

    CONFIG_FILE="$HOME/.bashrc"
    if [ ! -f $CONFIG_FILE ];then
        echo "Creating $CONFIG_FILE"
        echo "# Source global definitions" > $CONFIG_FILE    
        echo "if [ -f /etc/bashrc ]; then " >> $CONFIG_FILE
        echo "    . /etc/bashrc" >> $CONFIG_FILE
        echo 'fi' >> $CONFIG_FILE
    fi
    if ! grep -q "#XAutomation Aliases " $CONFIG_FILE;
    then
        echo '#XAutomation Aliases ' >> $CONFIG_FILE
    fi
    for xname in /home/$USER/.XAutomation/X*;
    do
        cmd=$(echo $xname | cut -d '/' -f5 )  #5th field for command name
        env_var=$(echo "alias $cmd=\"$xname\"")
        if ! grep -q "$env_var" $CONFIG_FILE ; then echo "$env_var" >> $CONFIG_FILE ; fi
        echo "Setting alias $cmd in $CONFIG_FILE"
    done
}
function postinstall()
{
    printf "\n\n"
    echo ${CYAN}  '     _  _                 _  _   '         
    echo ${CYAN}  '     \   \       A       /   /   '   
    echo ${CYAN}  '      \   \      +      /   /    '
    echo ${CYAN}  '       \   \     U     /   /     '
    echo ${CYAN}  '        \   \    +    /   /      '
    echo ${CYAN}  '         \   \   T   /   /       '
    echo ${CYAN}  '          \   \  +  /   /        '
    echo ${CYAN}  '           \   \ O /   /         '
    echo ${CYAN}  '            \_ _ + _  /          '
    echo ${YELO}  '            /    M    \          ' 
    echo ${YELO}  '           /   / + \   \         '
    echo ${YELO}  '          /   /  A  \   \        '
    echo ${YELO}  '         /   /   +   \   \       '
    echo ${YELO}  '        /   /    T    \   \      '
    echo ${YELO}  '       /   /     I     \   \     '
    echo ${YELO}  '      /   /      O      \   \    '
    echo ${YELO}  '     /_ _/       N       \_ _\   ' 
    echo -e ${GREN}'                                tools are installed in your machine'


}
preinstall
justdoit
postinstall
printf "\n\n ${BLUE} X[script-name] --help for detailed args and instructions"
