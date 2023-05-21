#!/usr/bin/bash

select choice in CREATE_DB LIST_DB CONNECT_DB DROP_DB; do
    case $choice in
    CREATE_DB)

        echo "Creating database..."
        source ./Create_DB.sh

        ;;
    LIST_DB)
        echo "Listing database..."
        ./List_DB.sh

        ;;
    CONECT_DB)
        echo "Conecting database..."
        ./Connect_DB.sh

        ;;
    DROP_DB)
        echo "Drop database..."
        ./Drop_DB.sh

        ;;
    esac
done
