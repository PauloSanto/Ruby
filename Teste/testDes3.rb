letters = [['Y', 'Q', 'S', 'R', 'O'],
           ['X', 'E', 'P', 'A', 'Z']]
instructions = <<~INSTRUCTIONS
0:1<>4
^v:4
0:4<>0
INSTRUCTIONS



a = letters
d = instructions
c = d.split("\n")
c.each do |b|
    if b[3..4] == "<>"   
        x1 =b[0].to_i
        x2 =b[2].to_i
        x3 =b[5].to_i
        s4 = a[x1]       
        @s5 = s4[x2]     
        @s6 = s4[x3]     
        a[x1].map!{|x| x.sub(@s5, "x")}
        a[x1].map!{|x| x.sub(@s6, @s5)}
        a[x1].map!{|x| x.sub(/x/, @s6)}
    end

    if b[0..1] == "^v"   
        x1 = b[3].to_i 
        s1 = a[0]      
        s2= a[1]     
        @s5 = s1[x1] 
        @s6 = s2[x1] 
        a[0].map!{|x| x.sub(@s5, @s6)}
        a[1].map!{|x| x.sub(@s6, @s5)}
    end
 #p a

end
p a