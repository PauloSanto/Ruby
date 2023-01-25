$E = "Alo Mundo 1"

class F
   puts "#$E"
end 

class A
puts "Alo mundo 2"
end   

class B
      
   @@b = "Alo mundo 3"  # variavel de classe
   
   def x
      puts"#@@b"        # imprime variavel de classe
   end
end    

k = B.new
k.x

class C
   def D
      @e = "Alo mundo 4"   # variavel de metodo
      puts "#@e"           # imprime variavel de metodo   
   end
end   

x = C.new
x.D 

