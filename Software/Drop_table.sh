#!/usr/bin/bash
ps3=" type your table number to drop "

echo "select your table number from the menu"

array=('ls')

# echo ${#array[*]}
select choice in ${#array[*]}; do
    if [$REPLY -gt ${#array[*]}]; then
        echo " 
      $REPLY not on the menu"

        continue
    else
        rm -r ${array[${REPLY} - 1]}

        echo "
      ${array[${REPLY} - 1]} tables dropeed successfuly..."
        echo
        break
    fi
done
