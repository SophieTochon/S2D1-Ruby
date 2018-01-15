def chiffre_de_cesar(string, key)

	key = key%26

	string.each_byte do |n_init| # La fonction each_byte isole chaque caractère et le convertit en integer

		if (n_init >= 97) && (n_init <= 122) # On isole les caractères compris entre a (97) et z (122)
		n_init += key # On incrémente chaque integer avec la valeur de la clé

			if (n_init > 122) # Dans le cas où l'integer incrémenté est supérieur à 122 (donc n'est plus une lettre minuscule)...
				print (n_init - 26).chr # ... on lui retranche le nombre de lettres de l'alphabet et on l'affiche sous forme de lettre
			else # Autrement...
				print n_init.chr # ... on l'affiche directement sous forme de lettre
			end

		
		elsif (n_init >= 65) && (n_init <= 90) # On fait exactement la même chose avec les majuscules (comprises entre 65 et 90)
		n_init += key

			if (n_init > 90)
				print (n_init - 26).chr
			else
				print n_init.chr
			end

		else
		print n_init.chr

		end
	end

end

chiffre_de_cesar("What a string!", 31) # On appelle la fonction
