a =  [[0, 0, 0, 0, 0, 0, 0, 0, 0],
[1, 2, 5, 2, 1, 1, 3, 2, 4],
[2, 2, 2, 3, 2, 1, 2, 1, 2],
[3, 4, 5, 3, 2, 6, 4, 2, 1],
[6, 6, 1, 3, 5, 5, 6, 9, 10],
[6, 6, 6, 3, 8, 9, 1, 8, 4],
[6, 7, 6, 1, 8, 9, 5, 7, 8]]

b = a.transpose
w = [] 

for i3 in 0..b.size
        b.each.with_index do |c, i|
            if c[i3] != nil && c[i3+1] != nil
                if c[i3] >= c[i3+1]
                    w << [i3+1,i]
                end
  
            end
        end
end
for i3 in 1..b.size
        b.each.with_index do |c, i|
            if c[i3] != nil && c[i3+2] != nil
                if c[i3] >= c[i3+2]
                    w << [i3+2,i]
                end
            end
        end
end
 x = w.uniq.sort
 print x
=begin
for i2 in 1..a.size-3 do  
    for i in 0..a.size-2 do  
        b = a[i]
        z = a[i2]
            for i1 in 0..b.size-1 do
                c = b[i1]
                d = z[i1]
                w << [i+1, i1] if c >= d 
            end
     end
end

 
print w
=end











=begin

#a= d.transpose
a.each.with_index do |item1, lin|
        #print item1[0]
        #print item1[1]
    
    b = item1.each.with_index do |item2, col|
        print item2
        #print item2[1]
        #b.push item2
        #print col
        #x = item1[col]
        #y = item1[col+1].to_i
        #print x
        #print y
        #print "-"
        #print  "ok  "    if x >= y 
        #print x
        #print y

    end

    #print a [lin]
    #print"   "
   #print [lin]
   #print "-  "
 
end
#print b









a = spectators.transpose
print a
for lin in 0..a.size-1 do
    a.each.with_index do |item, col| 
        if item[col].to_i > item[col+1].to_i
            b << [(col+1), (lin+1)]
            #print a
            print b
        end  
    end
end
#spectators.each.with_index do |l, il|

    #print spectators.at(x)
    #l.each.with_index do |c, ic|
        #b << il[c+1]    if il[c] > il[c+1]
        #print item
        #print i  #coluna
      
    #end
    #print item
    #print i # linha
#end

#print b
=end