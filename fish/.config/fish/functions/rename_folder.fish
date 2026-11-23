function rename_folder --argument-names old_name new_name
    # Check that both arguments were provided
    if test (count $argv) -ne 2
        echo "Usage: rename_folder <old_folder_name> <new_folder_name>"
        return 1
    end

    # Verify the source is actually a directory
    if not test -d "$old_name"
        echo "Error: Directory '$old_name' does not exist."
        return 1
    end

    # Prevent accidentally moving the folder inside an existing directory
    if test -e "$new_name"
        echo "Error: Destination '$new_name' already exists."
        return 1
    end

    # Rename the folder
    mv -- "$old_name" "$new_name"
    and echo "Renamed '$old_name' to '$new_name'"
end

