bold=$(tput bold)  
normal=$(tput sgr0)   
NONE='\033[00m'  
RED='\033[0;31m'    
YELLOW='\033[01;33m'  
GREEN='\033[01;32m'  
echo -e
${bold} ${NONE}Hello from ${RED}RMM${NONE}. Im ${GREEN}Bizhan Laripour ${NONE}and wish you enjoy with this project. 

"                                                    
declare -a all=(   
RMM_CONFIG_REPO     
RMM_DISCOVERY       
RMM_CONFIG_SERVER      
RMM_WORKER      
RMM_AGENT      
)
declare -a exist=()    
for val in "${all[@]}";do
if test -d ./$val;then
        exist+=($val)    
        fi
done

for del in "${exist[@]}";do   
all=( "${all[@]/$del}" )
done                                                                                                           
for vals in "${all[@]}";do                                    
if [ "$vals" !=  "" ]; then
git clone https://github.com/bizhan-laripour/$vals.git                                                   
fi                                                   
done                                                    
for ((i=0;i<"${#exist[@]}"; i++));do
        number=$(( $i + 1 ))
 echo $number : "${exist[$i]}" exist
done
echo "which module do you want to replace from git? just
 enter number of module with comma seperate:"
read -r modules

IFS=',' read -ra array <<< "$modules"

for val in "${array[@]}";do

for ((i=0; i<${#exist[@]};i++));do

if [ $val == $(( $i + 1 )) ];then
rm -rf ${exist[$i]}
git clone https://github.com/bizhan-laripour/${exist[$i]
}.git

#echo "${exist[$i]}"
fi
done
done
