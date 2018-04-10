#write your code here
#La fonction repete ce qu'on dit
def echo(text)
  @text = text
  return @text
end#

#La fonction repete ce qu'on dit en maj

def shout(text)
  @text = text
  @shout = @text.upcase
  return @shout
end

#La fonction repete n fois les mots
# n est à 1 par défaut
#JE fais une boucle si n >1 (2 ou plus)
#où la sortie est n fois le text
#Deux fois sinon
def repeat(text, n=1)
  @rep = text
  @n = n
  @output = @rep

  if n>1
    for i in 1...@n
      @output += " " + @rep
      i = i + 1
    end
  else
    @output = "#{@rep} #{@rep}"

  end

  return @output
end


#Je me complique un peu la vie ici en faisant une boucle sur les
#n premieres valeurs du texte
#J'aurai pu juste faire string[0..n]...
def start_of_word(text, n)
  @start= ""
  @n = n

  for i in 0...@n
    @start += text[i]
    i = i+1
  end

  return @start
end

#J'utilise la fonction partition pour obtenir le premier mot
def first_word(text)
  @start = text
  @return = @start.partition(" ").first
  return @return
end




