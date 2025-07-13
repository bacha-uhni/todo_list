# List tasks with formatting in main project script
list_tasks() {
    if [ ! -s "$TODO_FILE" ]; then
        echo "No tasks found!"
        return
    fi

    echo -e "\nCurrent Tasks:"
    echo "------------------------------"
    nl -w2 -s'. ' "$TODO_FILE"
    echo "------------------------------"
}