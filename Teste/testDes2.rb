stocks = <<~STOCKS
BSS:2 38 14 53 321
PIP:59 9 12 2
EET:2 9
TTE:42 1982 44 252 87 30 77
STOCKS

f=[]
g=[]
m=[]
x5=[]
result=[]
a = stocks
b = a.split("\n")
b.each.with_index do |c, ci| 
    d = c.split(/:/)
    e0 = d[0]
    e1 = d[1]
    f << e0.split(/" "/) 
    g << e1.split(/" "/) 
end

g.each.with_index do |h, hi|  
    h.each.with_index do |j,ji| 
       l = j.scan(/\w+/)  
       for i in 0..l.count-1
           m << l[i+1].to_i - l[i].to_i  if l[i+1] != nil # [-50, -1, 11, -7, 9, -4, -9, 19, -3, -3, -1]
       end 

       x2 = m.shift(l.length)
       x3 = x2.max.to_s  
       @x4 = [x3]     
    end
    x5 <<  @x4 +f[hi] 
end 
p x6 = x5.sort

 x6.each do |item|
   x7 = item.reverse
   x7 = x7[0].insert(-1, ":")
   result << x7.concat(item[0])
end
p result



=begin
m=[]
z1=[]
a = stocks
b = a.split("\n")
b.each.with_index do |c, ci| 
    d = c.split(/:/)
    e0 = d[0]
    e1 = d[1]
    f = e1.scan(/\w+/)

    for i in 0..f.count-1
        z1 << f[i+1].to_i - f[i].to_i  if f[i+1] != nil
    end 

    z2 = z1.shift(f.length) 
    if z2.max < 0
        x1 = z2.max
        @x4 = x1.to_s
        @x7 = e0.insert(-1, ":")
    else
        f.each do |x| 
            m << x.to_i
        end
        x1 = m.max
        x2 = m.min
        x3 = x1 - x2
        @x4 = x3.to_s
        @x7 = e0.insert(-1, ":")
    end
end 
p result = @x7.concat(@x4)




f=[]
g=[]
m=[]
x5=[]
result=[]
a = stock
b = a.split("\n")
b.each.with_index do |c, ci| 
    d = c.split(/:/)
    e0 = d[0]
    e1 = d[1]
    f << e0.split(/" "/)    #[["PPP"], ["WRW"], ["FTT"]]
    g << e1.split(/" "/) # g= [["53 3 2 13 6"], ["5 14 10 1 20"], [" 8 5 2 1"]]
end

g.each.with_index do |h, hi|   # h = ["53 3 2 13 6"]..[" 8 5 2 1"]
    h.each.with_index do |j,ji|  # j = "53 3 2 13 6"  "5 14 10 1 20"   " 8 5 2 1"
       l = j.scan(/\w+/)  # l = ["53", "3", "2", "13", "6"].. ["8", "5", "2", "1"] 
       
       for i in 0..l.count-1
            m << l[i+1].to_i - l[i].to_i  if l[i+1] != nil # [-50, -1, 11, -7, 9, -4, -9, 19, -3, -3, -1]
        end 

      p  x2 = m.shift(l.length) # [-50, -1, 11, -7] [9, -4, -9, 19]  [-3, -3, -1]
        x3 = x2.max.to_s  #11 19 -1
        @x4 = [x3]     #["11"] ["19"] ["-1"]
    end
    x5 << f[hi] + @x4   #["PPP", "11"]  ["WRW", "19"]   ["FTT", "-1"]
  #x6 = x5[1].to_i

   
end 
x6 = x5.sort
 x6.each do |item|
     x7 = item[0].insert(-1, ":")
    result << x7.concat(item[1])
item.each.with_index do |item1,i1|
 item1[0]

end
 end

 result




#ultima versao daqui para cima
name =[]
val =[]
val2 = []
dif=[]
val_int = []
 x1 = stocks.split("\n")
x1.each.with_index do |item, i| 
    x2 = item.split(/:/)
    name << x2[0]
    val << x2[1].scan(/\w+/) 
end
p val
val.each.with_index do |item, i|
   p @n = item.length

    item.each.with_index do |item1,i1|
        p item1
        if i1 < @n
            val2 << item1
        else 
            val2 << "#"
        end
    end
end
p val2

b.each.with_index do |z, i1| 
        m = z
        
        n = m.split(/:/)
     
        nome = n[0]
        p = n[1].split
        p.each.with_index do |e, i|
            
            if  e.next != nil  #&&  e.next.to_i >= p.size-1
                
                x5 = e.next.to_i - e.to_i 
                  


               
                
           
    
            end
        end
        y << [nome.to_s, x.max.to_s]
end  
 







#c = a[i+1, -3]
k = []
a.each_char do |x|
i+= 1
    if x == "\n"
        w << i - 1
    end
end
q = a.gsub(/["\n"]/, '') 
    w.each.with_index do |y, z|
        g = w[z].to_i
        h = w[z+1].to_i
        #p z
        #p g 
        #p h 
        k << a[g, h]
        
        end

p q 
p w

#i2 = a.index("\n", i).to_i
#c = a[i+1,i2]

#p k

p q[0,15]
p q[15,32]
p q[33,41]


i_last = a.rindex("\n").to_i
 p i_first
 p i_last

#b = a.split ("/n").to_s
a = 'ZLP:98 33 12 4'
b = a.split(/:/)
x=[]
c = b[0]
d = b[1].split.to_a

d.each.with_index do |e, i|  x << e[i+1].to_i - e[i].to_i if  e[i+1] != nil 
print e
end
print c.to_s+":"+x.max.to_s




a = 'ZLP:98 33 12 4'
b = a.split(/:/)
x=[]
c = b[0]
d = b[1].split
for i in 0..d.size-1 do
     x << d[i+1].to_i - d[i].to_i if  d[i+1] != nil
  
end
print c.to_s+":"+x.max.to_s
=end

