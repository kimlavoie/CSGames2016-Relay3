"j'ai essay� des trucs avec input() et inputdialog() 
"mais j'ai aucunement trouv� comment inputer :(

let randomNumber = 1000  "harcodage
let enteredNumber = 1000
let count = 0

while enteredNumber != randomNumber
	if enteredNumber < randomNumber
		echo "c'est moins!"
	elseif enteredNumber > randomNumber
		echo "c'est plus!"
	endif
	
	count += 1
endwhile

echo "bravo! :D t'as r�ussi en" count "coups!"	
echo "veux-tu rejouer? (o/n)"		
 
" ~40 minutes de recherche
" 5 minutes de vrai travail. y�.
