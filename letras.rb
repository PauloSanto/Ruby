#phrase = "Ada Lovelace criou o primeiro algoritmo para ser interpretado por máquinas."
phrase = "Oh, é preço."
str = phrase.downcase
puts str
puts "O comprimento da string com todos caracteres é de  " + "#{str.size}" + " caracteres"


str.gsub!(/[" ".,]/u, '')
str.gsub!(/[áéíóúãeo]/u, 'a')
puts str
puts "O comprimento da string somente com letras é de  " + "#{str.size}" + " caracteres"
print "Temos " + "#{((str.count "aeiouy").to_i)}" + " vogais"
str_l =  ((str.size ).to_i) -((str.count "aeiouy").to_i)
print " e temos " + "#{str_l}" + " consoantes" + "\n"








    

    







