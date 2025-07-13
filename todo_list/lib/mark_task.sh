# Marks task as done in main project script
mark_task_done() {
    list_tasks
    read -rp "Enter task number to mark as done: " num
    if ! [[ "$num" =~ ^[0-9]+$ ]]; then
        echo "Invalid input. Please enter a number."
        return
    fi

    total_lines=$(wc -l < "$TODO_FILE")
    if [ "$num" -le "$total_lines" ] && [ "$num" -gt 0 ]; then
        sed -i "${num}s/^\[ \]/[X]/" "$TODO_FILE"
        echo "Task marked as done."
    else
        echo "Task number out of range."
    fi
}