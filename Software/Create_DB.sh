#!/usr/bin/bash
cd ../Database

while true; do
   # reading input
   echo " write your DB name.. "
   read db_name
   # vlideting input
   # empty
   case $db_name in
   '')
      echo "the name can't be empty"
      continue
      ;;
   # the name can't spaces
   *[[:space:]] | *[[:space:]]* | [[:space:]]*)
      echo "the name can't have spaces"
      continue
      ;;
   [0-9]*)
      echo "the name can't start with int"
      continue
      ;;

   *[a-zA-zA_]*[a-zA-zA_] | [a-zA-zA_])

      if (find $db_name $(ls -F | grep /) &>~/../../dev/null); then
         echo "Ops look like db already exists"
         continue
      else
         mkdir $db_name
         break
      fi
      ;;
   *)
      echo "write valid name"
      continue
      ;;
   esac
done

cd - &>~/../../dev/null
