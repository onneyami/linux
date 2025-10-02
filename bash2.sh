child=16
adult=25
stdout=0

while [[ $stdout != 1 ]] 
    do
        echo "enter your name: "
        read name
    if [[ (-z $name) || ($name = 0) ]] ;then 
        echo "bye"      # if the string is empty or equals 0
        stdout=1
    elif [[ -n $name ]]; then   # if the string is not empty
        while [[ $stdout != 1 ]] ;do     
            echo "enter your age: " 
            read age     # read the value
            if [[ ($age -eq 0) || (-z $age) ]] ;then
                echo "bye"
                stdout=1
            elif [[ $age -le $child ]] ;then 
                echo "$name, your group is child"
            elif [[ $age -gt $adult ]] ; then 
                echo "$name, your group is adult" ;else
                if [[ ($age -ge 17) && ($age -le 25) ]] ;then 
                    echo "$name, your group is youth" ;fi
            fi ;break
        done ;fi
done
