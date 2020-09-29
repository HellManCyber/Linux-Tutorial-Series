

upgrade(){

    sudo apt-get update --force-yes -y
    sudo apt-get upgrade --force-yes -y
}

authentication(){
    echo "Do you want to update and upgrade this system? Yes or No"
    read ans
    case $ans in
        "Yes" | "yes" | "Y" | "y" )
            upgrade
            ;;
        "No" | "no" | "N" | "n" )
            exit
            ;;
        * )
            echo "Please enter a valid input."
            authentication
            ;;
        esac
}

authentication