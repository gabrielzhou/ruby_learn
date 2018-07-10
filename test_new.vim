function! Test()
	ruby <<EOF
	Vim::message("hello,vim,i am ruby")
	Vim::set_option("nu")
	Vim::command("!ls")
#buffer
	puts Vim::Buffer.current
	puts Vim::Buffer.count
	puts Vim::Buffer[0]
	puts Vim::Buffer.name
	puts Vim::Buffer[0].name
	puts Vim::Buffer[1].name
	puts Vim::Buffer[1].count
	puts Vim::Buffer[0].count
	puts Vim::Buffer[1].length
	puts Vim::Buffer[0].length
	#puts Vim::Buffer[1][2]
	puts Vim::Buffer[0][2]
	Vim::Buffer[1][2] = "try to set string to line 2"
	Vim::Buffer[1].delete(2)
	Vim::Buffer[1].append(2,"the new line")
	puts Vim::Buffer[1].line
	puts Vim::Buffer[1].line_number
#window
	puts Vim::Window.current
	puts Vim::Window.count
	puts Vim::Window[0]
	puts Vim::Window[1]
	puts Vim::Window[1].buffer
	puts Vim::Window[1].height
	puts Vim::Window[0].height
	puts Vim::Window[1].width
	puts Vim::Window[0].width
	puts Vim::Window[1].buffer.name
	Vim::Window[1].height = 18
	puts Vim::Window[1].cursor
	puts $curwin
	puts $curbuf

EOF
endfunction
