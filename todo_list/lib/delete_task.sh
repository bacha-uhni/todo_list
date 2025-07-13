# Delete a specific task in main project script
delete_task() {
    list_tasks
    read -rp "Enter task number to delete: " num
    if ! [[ "$num" =~ ^[0-9]+$ ]]; then
        echo "Invalid input. Please enter a number."
        return
    fi

    total_lines=$(wc -l < "$TODO_FILE")
    if [ "$num" -le "$total_lines" ] && [ "$num" -gt 0 ]; then
        sed -i "${num}d" "$TODO_FILE"
        echo "Task deleted."
    else
        echo "Task number out of range."
    fi
}