#!/usr/bin/bash
cd ../Database

echo "select database to drop"

arry=(' ls -F | grep / | tr / " " ')

# echo ${array[*]}
select choice in ${array[*]}; do
  if [ $REPLY -gt ${#array[*]} ]; then

    echo "$REPLY Not on the menu"
    continue

  else

    rm -r ${array[${REPLY} - 1]}

    echo "... your ${array[${REPLY} - 1]} DB deleted successfully..."
    break 2
  fi
done

cd - &>~/../../dev/null
