
#arr = list.find_index { |i| i == value}
#e = list.find_index(value)
#e = list.map{|i| list.find_index [i]}   #retorna os valores dos indices das posicoes
#arr = list.filter.map { |i| i = value} # substitui os elementos do array por value
#list.split.map { |a| a.upercase}
#a = ["a", "b", "c"]
#e=[]
#a.map{|e| a.find_index(e)}
#p ["b", "c"].map{|e| ["a", "b", "c"].find_index(e) }
#list.map{|e| (e == value)? print e }
#a = list.index{ |i| i == value} #retorna o valor do indice
#print  arr
#list.each {|a| print a}
# deve procurar um elemento numa string
# deve normalizar a string
# deve indicar qual o indice
#str.each_char { |a| (a == value)? print a : print"teste" }

#list.each{ |a| {(a == value)? print a}}
#list.each_index { |a| print [a] }a

   # list = ['a', 's', 'z']
    #value = 'z'
   # str = "a,b,c,    d"
   # x = list.each
   #{ (x == "z")? list.each_index { |a| print [a] }: puts "OK"}
    a=15
    p = (0..10)
    indexes = []

    list.each.with_index do |item, i| # procura na list cada elemento e indice armazena dentro |item,i|
      indexes.push(i) if item.include?(value) # se value estiver incluso em item carrga indexes com indice


#print a
#print list

#print e

require_relative "./finder.rb"

list = ['a', 's', 'z', 'zzza']
p Finder.new.index_of(list, 'a')


