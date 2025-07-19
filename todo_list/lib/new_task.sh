# Add a new task in main project script
new_task() {
    read -rp "Enter task description: " task
    if [[ -z "$task" ]]; then
        echo "Task cannot be empty."
    else
        echo "[ ] $task" >> "$TODO_FILE"
        echo "Task added successfully."
    fi
}
