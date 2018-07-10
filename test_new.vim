function! Test()
	ruby <<EOF
	Vim::message("hello,vim,i am ruby")
	Vim::set_option("nu")
	Vim::command("!ls")
	puts Vim::Buffer.current
	puts Vim::Buffer.count
	#puts Vim::Buffer.self[0]
EOF
endfunction
