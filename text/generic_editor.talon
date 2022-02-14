draw [<number_small>]:
    numb = number_small or 1
    edit.word_left()
    repeat(numb - 1)

spring [<number_small>]:
    numb = number_small or 1
    edit.word_right()
    repeat(numb - 1)

go left [<number_small>]:
    numb = number_small or 1
    edit.left()
    repeat(numb - 1)

# hike [<number_small>]:
#     edit.up()
#     repeat(number_small - 1)
#     key(enter)

# topple [<number_small>]:
#     edit.down()
#     repeat(number_small - 1)  
#     key(enter)

go right [<number_small>]:
    numb = number_small or 1
    edit.right()
    repeat(numb - 1)

go up [<number_small>]:
    numb = number_small or 1
    edit.up()
    repeat(numb - 1)

go down [<number_small>]:
    numb = number_small or 1
    edit.down()
    repeat(numb - 1)

head:
    edit.line_start()

push:
    edit.line_end()

go east:
    edit.line_start()
    edit.line_start()

go west:
    edit.line_end()

go south:
    edit.file_end()

go north:
    edit.file_start()

# go page down:
#     edit.page_down()

# go page up:
#     edit.page_up()

# selecting
grab line:
    edit.select_line()

grab all:
    edit.select_all()

grab left [<number_small>]:
    numb = number_small or 1
    edit.extend_left()
    repeat(numb - 1)

grab right [<number_small>]:
    numb = number_small or 1
    edit.extend_right()
    repeat(numb - 1)

grab up [<number_small>]:
    numb = number_small or 1
    edit.extend_line_up()
    repeat(numb - 1)

grab down [<number_small>]:
    numb = number_small or 1
    edit.extend_line_down()
    repeat(numb - 1)

grab word [<number_small>]:
    numb = number_small or 1
    edit.select_word()
    repeat(numb - 1)    

grab draw [<number_small>]:
    numb = number_small or 1
    edit.extend_word_left()
    repeat(numb - 1)

grab spring [<number_small>]:
    numb = number_small or 1
    edit.extend_word_right()
    repeat(numb - 1)

grab east:
    edit.extend_line_start()
    edit.extend_line_start()

grab west:
    edit.extend_line_end()
    edit.extend_line_end()

grab north:
    edit.extend_file_start()

grab south:
    edit.extend_file_end()

# editing
bill [grab] [<number_small>]:
    numb = number_small or 1
    edit.indent_more()
    repeat(numb - 1)    

rebill [grab] [<number_small>]:
    numb = number_small or 1
    edit.indent_less()
    repeat(numb - 1)

# deleting
# wipe row:
#     edit.delete_line()
    
# wipe left:
#     key(backspace)

# wipe right:
#     key(delete)
wipe [<number_small>]:
    numb = number_small or 1
    key(backspace)
    repeat(numb - 1)   

bin [<number_small>]:
    numb = number_small or 1
    key(delete)
    repeat(numb - 1)   

wipe up [<number_small>]:
    numb = number_small or 1
    edit.extend_line_up()
    repeat(numb - 1)    
    edit.delete()

wipe down [<number_small>]:
    numb = number_small or 1
    edit.extend_line_down()
    repeat(numb - 1) 
    edit.delete()

wipe word [<number_small>]:
    numb = number_small or 1
    edit.delete_word()
    repeat(numb - 1)

(wipe draw | sweep) [<number_small>]:
    numb = number_small or 1
    edit.extend_word_left()
    repeat(numb - 1)    
    edit.delete()

(wipe spring | blow) [<number_small>]:
    numb = number_small or 1
    edit.extend_word_right()
    repeat(numb - 1)    
    edit.delete()

(wipe | bin) start:
    edit.extend_line_start()
    edit.delete()

(mop | wipe row):
    edit.select_line()
    edit.delete()    

# wipe end:
#     edit.extend_line_end()
#     edit.delete()

(wipe | bin) east:
    edit.extend_line_start()
    edit.extend_line_start()
    edit.delete()

(wipe | bin) west:
    edit.extend_line_end()
    edit.extend_line_end()
    edit.delete()

(wipe | bin) north:
    edit.extend_file_start()
    edit.delete()

(wipe | bin) south:
    edit.extend_file_end()
    edit.delete()
    
(wipe | bin) all:
    edit.select_all()
    edit.delete()

#copy commands
copy all:
    edit.select_all()
    edit.copy()
#to do: do we want these variants, seem to conflict
# copy left:
#      edit.extend_left()
#      edit.copy()
# copy right:
#     edit.extend_right()
#     edit.copy()
# copy up:
#     edit.extend_up()
#     edit.copy()
# copy down:
#     edit.extend_down()
#     edit.copy()

copy word [<number_small>]:
    numb = number_small or 1
    edit.select_word()
    repeat(numb - 1)    
    edit.copy()


copy draw [<number_small>]:
    numb = number_small or 1
    edit.extend_word_left()
    repeat(numb - 1)    
    edit.copy()


copy spring [<number_small>]:
    numb = number_small or 1
    edit.extend_word_right()
    repeat(numb - 1)    
    edit.copy()

copy row:
    edit.select_line()
    edit.copy()

copy east:
    edit.extend_line_start()
    edit.delete()

copy west:
    edit.extend_line_end()
    edit.copy()

copy north:
    edit.extend_file_start()
    edit.copy()

copy south:
    edit.extend_file_end()
    edit.copy()

#snip commands
snip all:
    edit.select_all()
    edit.cut()

#to do: do we want these variants
# snip left:
#      edit.select_all()
#      edit.cut()
# snip right:
#      edit.select_all()
#      edit.cut()
# snip up:
#      edit.select_all()
#     edit.cut()
# snip down:
#     edit.select_all()
#     edit.cut()

snip east:
    edit.extend_line_start()
    edit.cut()

snip west:
    edit.extend_line_end()
    edit.cut()

snip north:
    edit.extend_file_start()
    edit.cut()

snip south:
    edit.extend_file_end()
    edit.cut()

snip word:
    edit.select_word()   
    edit.cut()

snip draw [<number_small>]:
    numb = number_small or 1
    edit.extend_word_left()
    repeat(numb - 1)    
    edit.cut()

snip spring [<number_small>]:
    numb = number_small or 1
    edit.extend_word_right()
    repeat(numb - 1)
    edit.cut()

snip row:
    edit.select_line()
    edit.cut()


