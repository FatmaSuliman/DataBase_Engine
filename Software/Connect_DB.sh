#!/usr/bin/bash

#!/usr/bin/bash
cd ../Database

echo "select your db number from the menu"

arry=('ls -F | grep / | tr / " "')

# echo ${array[*]}

select choice in ${array[*]}; do
  if [ $REPLY -gt ${#array[*]} ]; then

    echo "$REPLY Not on the menu"
    continue

  else

    cd ../Database/${array[${REPLY} - 1]}

    echo "... your are connected to  ${array[${REPLY} - 1]} DB "

    break
  fi
done
echo
ps3 = "type your choice number : "

select choice in Create_table List_tables Drop_table Insert_in_table Select_from_table delete_from_table update_from_table; do
  case $choice in
  Create_table)
    echo "creating table..."
    source ../../Software/create_table.sh
    ;;
  List_tables)
    echo "listing tables..."
    source ../../Software/list_tables.sh
    ;;
  Drop_tables)
    echo "Dropping table..."
    source ../../Software/drop_table.sh
    ;;
  Insert_in_tables)
    echo "inserting in table..."
    source ../../Software/insert_in_table.sh
    ;;
  select_from_table)
    echo "selecting from table..."
    source ../../Software/select_from_table.sh
    ;;
  Delete_from_table)
    echo "deletting from table..."
    source ../../Software/delete_from_table.sh
    ;;
  update_from_table)
    echo "updatting from table..."
    source ../../Software/update_from_table.sh
    ;;
  *)
    "Not a propriate choice try agin"
    ;;
  esac
done
cd - &>~/../../dev/null0
