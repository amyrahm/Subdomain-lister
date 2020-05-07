echo "Usage program.sh -d/-f  domain wordlist(-f used)"

sw=$1
dir=`pwd`
file="$dir/subdomains.txt"
wordlist=$3
parent=$2
if [[ $sw ==  "-d" ]]

then
        while read file
        do
                if $( host $file.$2 &> /dev/null )
                then
                        echo  "$file"."$2"
                fi
        done <  $file
elif [[ $sw == "-f" ]]
then
        while read domain
        do
                if $( host $domain.$2 &> /dev/null )
                then
                        echo "$domain"."$2"
                fi
        done < $3
fi


