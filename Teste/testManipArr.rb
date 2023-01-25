#lista1 = [1,3,1]
#lista2 = [3,1]
#[3,1,4,5,7,9],[1,3,4,5,9,7]))
#puts lista1.each { |a| lista2.include?(a) }
#puts lista1 == lista2
#puts lista1.each { |x| } == lista2.each{ |y| }
#puts lista1.select { |a| lista2}
#puts lista1.all? { |x| x == lista2.each}
#puts lista1.eql? lista1
#puts lista1.each { |x|  } == lista2.each { |x|  }
#puts lista1.each { |x|}
#puts  lista1.include?(lista2.each)
#p Finder.new.index_of(list, 'a')
#lista1.each.with_index do |item, i| 
    #indexes.push(i) if item.include?(lista2)
    #a = []
    
#lista2.each.with_index do |item2, i2| 
    #lista1.each.with_index do |item1, i1| 
               
        #if item1 == item2
            #a << true
            #break
            #print a
        #end
          
        #print a
    #end
    #print a
#end
#print a
 #b = a.size == lista1.size
  #puts b
=begin
a = []
b = []
c = []
d = []
num1 = 3
num2 = 5
for i in 1..50 do
    if i % num1 == 0  && i % num2 == 0
        a << i
    end
    if i % num1 == 0  
        b << i
    end
    if  i % num2 == 0
        c << i
    end
end
b = b - a
c = c - a
d = [a, b, c]
print d

x=0
list = [3, 6, 9, 12, 18, 21, 24, 27, 33, 36, 39, 42, 48]
list.each do |item|
    x = x + item

    end
 print x
=end
a = []
#numeros = [1, 2, 3, 4, 5]
#letras = ["a", "b", "c", "d", "e"]
dezenas = ["vinte", "trinta", "quarenta"]
unidades = ["", "um", "dois", "tres", "quatro", "quinta", "sexta", "sete", "oito", "nove"]
dezenas.each do |item1| 
    unidades.each do |item2| 
        a << [item1, item2]
        
    end
end   

print a