function! DemoFun1()
	ruby<< EOF
	buf = VIM::Buffer.current
	puts "current buffer name: #{buf.name} number: #{buf.number} length: #{buf.length}"
             EOF
endfunction

function Test()
	echo "test is ok"
endfunction

function! DemoFun2(arg1)
	ruby<<EOF
	puts "you input: #{VIM.evaluate('a:arg1')}"
	EOF
endfunction 
