#!/bin/bash


echo    "Welcome tarnished, please select your starting class:
1 - Samurai
2 - Prisones
3 - Prophet"

read class

case $class in

        1)
                type="Samurai"
                hp=10
                attack=12
                ;;
        2)
                type="Prisoner"
                hp=20
                attack=4
                ;;
        3)
                type="Prophet"
                hp=30
                attack=4
                ;;
esac

echo "You chosen the $type class. Your HP is $hp and your attack is $attack"



echo  "You Died"


#First beast battle

beast=$(( $RANDOM % 2 ))

echo "Your first beast approaches. Prepare to battle.  Pick up a  number between 0-1. (0/1)"

read tarnished

if [[  $beast == $tarnished && 47 > 23 ]]; then #evaluates if beast is equals to tarnished AND if 47 is greater than 23
        echo "Beast VANQUISHED!! Congrats fellow tarnished"
else
        echo "You died"
        exit 1
fi


sleep 2

echo "Boss battle. Get scared. It's MArgit. pick up a number between (0-9)"

read tarnished

beast=$(( $RANDOM % 10))
if [[  $beast == $tarnished || $tarnished == "coffee" ]]; then #evaluates if beast is equals to tarnished OR if tarnished values is -coffee-
#        if [[ $USER == "root" ]]; then #if the  previous evaluation is OK, you only can win if you are the root user it's called NESTED IF
#               echo "Beast vanquished"
#       fi
        echo "Beast vanquished"
elif [[  $USER == "bernard" ]]; then    #it enters here if the first IF is not hit
        echo "Hey, Bernard always win"
else
        echo "You died"
fi
