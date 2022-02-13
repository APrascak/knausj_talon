tag: user.file_manager
-
title force: user.file_manager_refresh_title()
manager show: user.file_manager_toggle_pickers()
manager refresh: user.file_manager_update_lists()
go desk: user.file_manager_open_user_directory("Desktop")
go docks: user.file_manager_open_user_directory("Documents")
go downloads: user.file_manager_open_user_directory("Downloads")
go pictures: user.file_manager_open_user_directory("Pictures")
go profile: user.file_manager_open_user_directory("")
go talent recordings: user.file_manager_open_recordings_directory()
go talent home: user.file_manager_open_directory(path.talon_home())
go talent user: user.file_manager_open_directory(path.talon_user())
go user: user.file_manager_open_directory(path.user_home())
go back [<number_small>]: 
    number = number_small or 1    
    user.file_manager_go_back()
    repeat(number - 1)
forward [<number_small>]:
    number = number_small or 1
    user.file_manager_go_forward()
    repeat(number - 1)
root [<number_small>]: 
    number = number_small or 1
    user.file_manager_open_parent()
    repeat(number - 1)
folder <number_small>$: 
    directory = user.file_manager_get_directory_by_index(number_small - 1)
    user.file_manager_open_directory(directory)
go dir {user.file_manager_directories}: user.file_manager_open_directory(file_manager_directories)
take folder {user.file_manager_directories}: user.file_manager_select_directory(file_manager_directories)
file <number_small>: 
    file = user.file_manager_get_file_by_index(number_small - 1)
    user.file_manager_open_file(file)
take folder <number_small>: 
    directory = user.file_manager_get_directory_by_index(number_small - 1)
    user.file_manager_select_directory(directory)
take file <number_small>: 
    file = user.file_manager_get_file_by_index(number_small - 1)
    user.file_manager_select_file(file)
take file {user.file_manager_files}: user.file_manager_select_file(file_manager_files)

copy path {user.file_manager_files}:
    user.file_manager_select_file(file_manager_files)
    sleep(200ms)
    user.file_manager_copy_path()

copy path {user.file_manager_directories}:
    user.file_manager_select_directory(file_manager_directories)
    sleep(200ms)
    user.file_manager_copy_path()

copy path:
    user.file_manager_copy_path()

#new folder
folder new [<user.text>]: 
    user.file_manager_new_folder(text  or "")

#show properties
properties show: user.file_manager_show_properties()

# open terminal at location
terminal here: user.file_manager_terminal_here()

folder next: user.file_manager_next_folder_page()
folder last: user.file_manager_previous_folder_page()

file next: user.file_manager_next_file_page()
file last: user.file_manager_previous_file_page()

