# question [mark]: "?"
# (downscore | underscore): "_"
# double dash: "--"
# (bracket | brack | left bracket): "{"
# (rbrack | are bracket | right bracket): "}"
triple quote: "'''"
# ellipses: "..."
spamma: ", " 
# plus: "+"
# arrow: "->"
# dub arrow: "=>"
new row: "\\n"
# carriage return: "\\r"
# line feed: "\\r\\n"
bear dubstring:
    '""'
    key(left)
bear escaped dubstring:
    '\\"\\"'
    key(left)
    key(left)
bear string:
    "''"
    key(left)
bear escaped string:
    "\\'\\'"
    key(left)
    key(left)
bear round:
    user.paste("()")
round:
	user.paste("()")
	key(left)
bear square: 
    user.paste("[]") 
square: 
	user.paste("[]") 
	key(left)
bear curly: 
    user.paste("{}") 
curly: 
	user.paste("{}") 
	key(left)
bear duty: 
    user.paste("%%") 
duty: 
	user.paste("%%") 
	key(left)
quote:
	user.paste("''")
    key(left)
bear ditto:
    user.paste('""')
ditto:
    user.paste('""')
    key(left)
bear ticker:
    user.paste('``')
ticker:
	user.paste('``')
    key(left)
bear ring:
    user.paste('<>')
ring:
    user.paste('<>')
    key(left)
bear pad:
    user.paste('   ')
pad:
    user.paste('   ')
    key(left)
ring take: 
    text = edit.selected_text()
    user.paste("<{text}>")
pad take: 
    text = edit.selected_text()
    user.paste(" {text} ")    
curly take: 
    text = edit.selected_text()
    user.paste("{{{text}}}")
round take: 
    text = edit.selected_text()
    user.paste("({text})")
percy take: 
    text = edit.selected_text()
    user.paste("%{text}%")
quote take:
    text = edit.selected_text()
    user.paste("'{text}'")
ditto take:
    text = edit.selected_text()
    user.paste('"{text}"')
ticker take:
    text = edit.selected_text()
    user.paste('`{text}`')
square take:
    text = edit.selected_text()
    user.paste('[{text}]')
between <user.symbol_key>:
    key("{symbol_key} {symbol_key} left")
