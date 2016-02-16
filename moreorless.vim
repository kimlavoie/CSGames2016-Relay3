function! Rand(max)
    return str2nr(matchstr(reltimestr(reltime()), '\v\.@<=\d+')[1:])
endfunction

let continue = 1

while continue == 1
	let tries = 0
	let enteredNumber = -1
	let randomNumber = Rand() % 100
	
	while enteredNumber != randomNumber
		let enteredNumber = input('Enter a number between 0 and 100: ')
		if enteredNumber > 0 && enteredNumber < 100
			if enteredNumber < randomNumber
				echo "More!\n"
			elseif enteredNumber > randomNumber
				echo "Less!\n"
			endif
		
			let tries = tries + 1
		else 
			echo "You dumbass!\n"
		endif
	endwhile
	
	echo "YAY! :D You got it in " tries " tries!\n"
	let continue = (input('Replay? (y/n) : ') == 'y') ? 1 : 0
endwhile
