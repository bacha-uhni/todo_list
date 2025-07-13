# Clear all tasks from the list in main project script
clear_tasks() {
    read -rp "Are you sure you want to clear all tasks? (y/n): " confirm
    if [[ "$confirm" =~ ^[Yy]$ ]]; then
        > "$TODO_FILE"
        echo "All tasks cleared."
    else
        echo "Operation cancelled."
    fi
}