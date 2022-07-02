
echo "   [=] starting"
ID= #enter ID number
cd /etc/
if [ "$1" == "on" ];
    then
        echo "moving into etc/"
        if grep $ID environment
            then
                echo "[+] wifi is on"
                echo "[-] exitting"
                exit
            else
                echo "[+] wifi is off turning on"
                sudo mv environment environment.swp
                sudo mv environment.bak environment
                sudo mv environment.swp environment.bak
                exit
        fi
    else
        if [ "$1" == "off" ];
            then
            echo "[+] turning off"
            if grep $ID environment
                then
                    echo "[+] wifi is on"
                    echo "[+] switching off"
                    
                    sudo mv environment environment.swp
                    sudo mv environment.bak environment
                    sudo mv environment.swp environment.bak
                    exit
                else
                    echo "[-] wifi is off"
                    exit
            fi 
        else
            echo "[-] problem2"
            exit
    fi
        exit
fi

