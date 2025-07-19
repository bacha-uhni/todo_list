#!/bin/bash

# Sourcing functions from /lib folder
source "lib/list_tasks.sh"
source "lib/new_task.sh"
source "lib/mark_task.sh"
source "lib/delete_task.sh"
source "lib/clear_list.sh"


# File to store tasks
TODO_FILE="todo_list.txt"

# Initialize the file if it doesn't exist
init_file() {
    [ ! -f "$TODO_FILE" ] && touch "$TODO_FILE"
}

# Display the menu
show_menu() {
    echo "=============================="
    echo "     TO-DO LIST MANAGER"
    echo "=============================="
    echo "1) View Tasks"
    echo "2) Add Task"
    echo "3) Mark Task as Done"
    echo "4) Delete Task"
    echo "5) Clear All Tasks"
    echo "6) Exit"
    echo "=============================="
}


# Main loop
main() {
    init_file
    while true; do
        
        show_menu
        read -rp "Choose an option [1-6]: " choice
        case $choice in
            1) list_tasks ;;
            2) new_task ;;
            3) mark_task_done ;;
            4) delete_task ;;
            5) clear_tasks ;;
            6) echo "Goodbye!"; exit 0 ;;
            *) echo "Invalid option. Please choose between 1-6." ;;
        esac
        echo ""
        read -rp "Press Enter to continue..."   
        clear                                    

    done
}

main
