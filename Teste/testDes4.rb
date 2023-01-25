#return array if array.length <= 1
array = [5, 56, 54]


if array[0].to_s.length == 1 
if array[0] <= array[1][1]
  array[0], array[1] = array[1], array[0] 
end
if array[0] > array[1][1]
  array[0], array[1] = array[1], array[0] 
end
end
#p   array[0], array[1] = array[1], array[0] if array[0] > array[1][1]
#array[0], array[1] = array[1], array[0]
p array
















=begin

array = [
 [34, 97, 1, 23, 95, 347, 9, 12],
 #[62, 35, 26, 61, 63, 345, 334, 2]
]
@str = "99795636261353473453433426232121"


@x9=''
    def calc(array)
      x0=[]
      x5=[]
      s2=[]
      s3=[]
      s4=[]
      z=[]
      res=[]
      @x6=''
      array.each do |n|  # tira do array
        n.each do |n1|   #cada inteiro
          s1 = n1.to_s                 # convet int => string
          s2 << n1.to_s
          s3 << n1.to_s
          x0 << s1.slice!(0).to_i      # pega o primeiro digito e converte para inteiro
          @x1 = x0.max.to_s
          @y1 = x0.min.to_s                   # max 
        end
      end

      x2 = s2.select {|e| e.start_with?(@x1) }
      x3 = x2.sort
      x4 = x2.length-1
      for i in  0..x4 do
        x5 << x3[x4-i].to_s
      end 
     
      for i in 0..x5.length-1 
        x5.each{|e| z << e }
        z[i].each_char{|e| @x7 = 1  if e > x5.last}
      end


      while x5.last.to_i < 10 && @x7 != 1
         x5.insert(0, x5.last.to_s)
         x5.delete_at(-1)
      end  
        
      for i in  0..x4 do
           @x6.concat(x5[i])
      end 
       
      x5.each{|e| s3.delete(e)} 
      s3.each { |e| s4 << e.to_i}
      
      if array.length == 1
        @x9 += @x6
        res << @x9.to_i 
      else
   
        array.each.with_index do |e, i| 
    p      x = array[i].join.length
    p @x9.length
         if @x9.length < x
     p       @x9 += @x6
         else
            @x9 + ", "
            res << @x9.to_i 
            @x9=""
          end
      end
      ########ppp44

       
        
      end


      
      if [s4] != [[]]
        calc([s4])
      else
        
        return res
      end
      
    end
  
  ###### p3 ######
    

  p calc(array)

 
   array.each.with_index do |e, i| 
   x = array[i].join.length
   @str.slice!(0, x)
   end
  



         z=[]
             
       
        for i in 0..x5.length-1 
          x5.each{|e| z << e }
          z[i].each_char{|e| @x7 = 1  if e > x5.last}
            p @x7
          end
          

     
      while x5.last.to_i < 10 && @x7 != 1
         
        x5.insert(0, x5.last.to_s)
        x5.delete_at(-1)
        end



    #p l = ar.scan(/\w+/)
            ar.count.times do |i1|     #conta 0..qtde elementos
            @i1 = i1
            x1 << "#" if i1 == 0
            z=ar.maxcd
            #z=ar.min
            
            x1 << z
            z1=ar.index(z)
            ar.slice!(z1)
              #p x1   
        end


        x2 << x1[0..@i1]
      end
    end
   
 
=end   