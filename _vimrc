" j'ai essay� des trucs avec input() et inputdialog() 
" mais j'ai aucunement trouv� comment inputer :(

" Antoine: could not test if Input and random worked (bonne change Fred :P)
" La structure du programme est fini il faut juste debug

" Found this on the internet if the random does not work 
function Rand()
    return str2nr(matchstr(reltimestr(reltime()), '\v\.@<=\d+')[1:])
endfunction

" For random, don't know if it works
python import random

let randomNumber = random.range(0, 1001)
let enteredNumber = -1
let count = 0
let continue = 1

while continue == 1
	count = 0
	enteredNumber = -1
	randomNumber = random.range(0, 1001)
	
	while enteredNumber != randomNumber
		enteredNumber = input('Enter a number between 0 and 1000: ')
		if enteredNumber < 1000 && enteredNumber > 0
			if enteredNumber < randomNumber
				echo "c'est moins!"
			elseif enteredNumber > randomNumber
				echo "c'est plus!"
			endif
		
			count += 1
		else 
			echo "wrong input"
		endif
	endwhile
	
	echo "bravo! :D t'as r�ussi en" count "coups!"
	continue = (input('veux-tu rejouer? (o/n) : ') == 'o') ? 1 : 0
endwhile
 
" ~40 minutes de recherche
" 5 minutes de vrai travail. y�.
