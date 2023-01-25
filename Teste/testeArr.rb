array = [1,2,3,4,5,6]
n =[]
for i in 0..array.size-1 do
    if i==0
            a = (array[i]).to_i
            b = (array[i+1]).to_i
            y = (a * b)
            n << y
    else
        if i >= array.size-1
            a = (array[i-1]).to_i
            b = (array[i]).to_i
            y = (a * b)
            n << y
            
            

        else
            a = (array[i-1]).to_i
            b = (array[i+1]).to_i
            y = (a * b)
            n << y
        end
       
        
           

    end
   
     
end


print n