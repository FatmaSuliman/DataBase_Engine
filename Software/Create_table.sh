echo "----already existing tables--------"

ls -s

# let user create a valid table name

while true; do
    # ready the input
    read -p "inter your table name to create"

    table_name=$REPLY

    case $table_name in
    '')
        echo the name can not be empty
        continue
        ;;

    # the name of the table can not have any space

    *[[:space]] | *[[:space]]* | [[:space]]*)
        echo the name of the table can not have any spaces

        continue
        ;;

    #    the name can not start with digits
    [0-9]*)
        echo the name can not start with digits

        continue
        ;;

    *[a-zA-zA_]*[a-zA-zA_] | [a-zA-zA_])
        touch $table_name
        echo "your created your table successfully"
        break
        ;;

    esac
done
