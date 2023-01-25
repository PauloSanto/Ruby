=begin
sequence = "abc" 
sequence =   'abc abc ab ac 
#sequence =  'qzbw qez xgedfiaaaa b'bnyuhqsrazlwtpocj fxgpoqijdzybletckwaunsr'\
#'pwnqsizrfcbyljexgouatd ljtperqsodghnufiycxwabzw'
#sequence =  'qzbw qez xgedfibnyuhqsrazlwtpocj fxgpoqijdzybletckwaunsrpwnqsizrfcbyljexgouatd ljtperqsodghnufiycxwabzw'
#print sequence
#c=0
#sequence.split(" ").each do
 # |x|   b = (x.count"a-z")
 #   c +=  b  
#end 
#puts c

#sequence.each do |item| 
 #   indexes.push(i) if item.include?(value)
#puts b

#a.each { |x| x.count }

c = 0

    sequence.each_char.with_index do |x1, i1| 
        sequence.each_char.with_index do |x2, i2|
                
             c+=1 if x1[i1] == x2[i2] 
                 break
            
                
                #break
                     
             puts c
        end    
        puts c 
        #c = a.count
                #puts c
    end
      #puts c
 
=end
   sequence = 'qzbw qez xgedfibnyuhqsrazlwtpocj fxgpletckwaunsr'\
   'pwnqsizrfcbyljexgouatd ljtperqsodghnufiycxwabzw'
   #sequence = 'abc abc ab ac aaaa b'
    c = 0
    d = 0
    a = sequence.split(" ")
    a.each do |x| b =  x.chars.uniq
              c = (b.count) 
              d = c + d
          end

     puts d

     def unique_quantity(text)
      c = 0
      d = 0
      arr = text.split(" ")
      arr.each do |x| b =  x.chars.uniq
                aux = (b.count) 
                cont = aux + cont
            end
      cont
     #print c
    #sequence.chars.uniq
    #print sequence
  
    
    #d = a.each { |z| z.split(//).uniq }
    
  
   



=begin
   d.each  do |x| 
    
   b = (x.count(x)).to_i
   print b
    c = c + b
    end
   
   
   print c

=end
