function! RedGem()
	ruby << EOF
	class Garnet
		def initialize(s)
			@buffer = Vim::Buffer.current
			vimputs(s)
		end
		def vimputs(s)
			@buffer.append(@buffer.count,s)
		end
	end
	gem = Garnet.new("pretty")
	EOF
endfunction

function Test3()
	echo "hello,world"
endfunction
