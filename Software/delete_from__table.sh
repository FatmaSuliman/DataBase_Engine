#!/usr/bin/bash
echo "
 select your table number from the menu
 "
 array=('ls')

 select choice in ${array{*}}
 do 
    if [ $REPLY -gt ${array{*}}]
    then
        echo "
        $REPLY is not the menu 
        "
     
        continue 
    else 
        echo "
        you slected  ${array[${REPLY} - 1]} table...
        "
        table_name=${array[${REPLY} - 1]}
        break
    fi
done

