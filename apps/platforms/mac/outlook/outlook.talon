app.bundle: com.microsoft.Outlook
-
archive: user.outlook_archive()
delete: key(cmd-backspace)
flag: key(ctrl-0)
unflag: key(cmd-ctrl-0)
junk: key(cmd-shift-j)
download: user.outlook_download_images()

mark [as] read: key(cmd-t)
mark [as] unread: key(cmd-shift-t)

send [this] message: key(cmd-enter)

move:
	key(cmd-shift-m)

(save to | move to) [<user.text>]:
	key(cmd-shift-m)
	insert(user.text or "")

reply: key(cmd-r)
reply all: key(cmd-shift-r)
forward: key(cmd-j)

hunt all: key(cmd-shift-f)

toggle sidebar: key(cmd-alt-s)

# not tested in "old Outlook"
# can use Control-[/] for previous/next though that does not focus the message list
next:
	user.outlook_focus_message_list()
	key(down)
previous:
	user.outlook_focus_message_list()
	key(up)
collapse:
	user.outlook_focus_message_list()
	key(left)
expand:
	user.outlook_focus_message_list()
	key(right)
message: user.outlook_focus_message_body()

folder <user.text>:
	user.outlook_focus_folder_list()
	insert('{user.formatted_text(text, "ALL_LOWERCASE,NO_SPACES")}')
	user.outlook_focus_message_list()

go [to] inbox: user.outlook_set_selected_folder('inbox')
go [to] drafts: user.outlook_set_selected_folder('drafts')
go [to] junk: user.outlook_set_selected_folder('junk mail')
go [to] sent: user.outlook_set_selected_folder('sent items')

# new Outlook only (not exposed in scripting dictionary)
go [to] archive: user.outlook_set_selected_folder('archive')

# different implementation in "old Outlook" - replace above if you're using it
# flag: key(ctrl-5)
# unflag: user.outlook_unflag()

# message composition
bold: key(cmd-b)
italic: key(cmd-i)
underline: key(cmd-u)
strike through: key(cmd-shift-x)
normal: user.menu_select('Edit|Clear Formatting')

copy style: user.menu_select('Edit|Copy Formatting')
paste style: user.menu_select('Edit|Paste Formatting')

bullet: user.menu_select('Format|Bulleted List')

move right: key(cmd-])
move left: key(cmd-[)
