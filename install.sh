#cloning repo to local machine
#git clone https://github.com/zuck007/XAutomation.git ~/.XAutomation
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

printf "\n ${GREN} Configuring ~/.bashrc & setting aliases for Xscript\n"

    CONFIG_FILE="$HOME/.bashrc"
    if [ ! -f $CONFIG_FILE ];then
        echo "Creating $CONFIG_FILE"
        echo "# Source global definitions" > $CONFIG_FILE    
        echo "if [ -f /etc/bashrc ]; then " >> $CONFIG_FILE
        echo "    . /etc/bashrc" >> $CONFIG_FILE
        echo 'fi' >> $CONFIG_FILE
    fi
    echo '#XAutomation Aliases ' >> $CONFIG_FILE
    for xname in ~/.XAutomation/X*;
    do
        cmd=$(echo $xname | cut -d '/' -f5 )  #5th field for command name
        echo "alias $cmd=\"$xname\"" >> $CONFIG_FILE
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
#justdoit
postinstall
printf "\n\n ${BLUE} X[script-name] --help for detailed args and instructions"
