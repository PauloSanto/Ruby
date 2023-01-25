data = {
    "name": "la", 
    "surname": "Capone", 
    "birthdate": "29/01/1899"
  }
name = data[:name]
surname = data[:surname]
birthdate = data[:birthdate]

  
  
  
  

  
      surname_vog = ""
      surname_cons = ""
      surname_len = ""
      code_sur = ""

      vog = "aeiouAEIOU"
      cons = "bcdfghjklmnpqrstvxwyzBCDFGHIJKLMNPQRSTVXYWZ"
      surname.scan(/./).each { |item|  surname_len.insert(-1, item) }
      surname.scan(/./).each { |item|  surname_vog.insert(-1, item)  if vog.include?(item) }
      surname.scan(/./).each { |item|  surname_cons.insert(-1, item)  if cons.include?(item) }

      if surname_len.length < 3 
          surname_len.insert(2, "X")
          code_sur.insert(0, surname_len)
      elsif surname_cons.length >= 3
          code_sur.insert(0, surname_cons[0..2])
      elsif surname_cons.length == 2
          code_sur.insert(0,surname_cons)
          code_sur.insert(2, surname_vog[0])
      else surname_cons.length == 1
              code_sur.insert(0, surname_cons[0])
              code_sur.insert(1, surname_vog[0..1])
      end
      p code_sur = code_sur.upcase
    

  
      name_vog = ""
      name_cons = ""
      name_len = ""
      code_name = ""

      vog = "aeiouAEIOU"
      cons = "bcdfghjklmnpqrstvxwyzBCDFGHIJKLMNPQRSTVXYWZ"
      name.scan(/./).each { |item|  name_len.insert(-1, item) }
      name.scan(/./).each { |item|  name_vog.insert(-1, item)  if vog.include?(item) }
      name.scan(/./).each { |item|  name_cons.insert(-1, item)  if cons.include?(item) }

      if name_len.length < 3 
         name_len.reverse.insert(2, "X") if vog.include?(name_len[0])
         name_len.insert(2, "X") if cons.include?(name_len[0])
         code_name.insert(0, name_len)
      elsif name_cons.length >= 3
          code_name.insert(0, name_cons[0..2])
      else name_cons.length == 2
          code_name.insert(0,name_cons)
          code_name.insert(1, name_vog[0])
      
      end
      p code_name = code_name.upcase
  

  
        ano = ""
        ano = ano.insert(-1,birthdate[-2]).insert(-1, birthdate[-1])
        
        date = birthdate.gsub(/\W/,"")

        num_soma = date[0].to_i + date[1].to_i 
        if  num_soma < 10
            sum_data = num_soma.to_s
            
        else
            num_soma.to_s
            sum = num_soma[0].to_i + num_soma[1].to_i
            sum_data = sum.to_s
        end
        
        tab = { "1": "A", "2": "B", "3": "C", "4": "D", "5": "E", "6": "H",
                "7": "L", "8": "M", "9": "P", "10": "R", "11": "S", "12": "T" }
        
        if date[2].to_i == 0
            aux = date[3]
        else
            aux = date[2].concat(date[3])
        end
        aux_tab = aux.to_sym
        mes = tab[aux_tab]
        p code_num = ano.concat(mes, sum_data)
  

        p code_sur.concat(code_name, code_num)






  
=begin
name = data[:name]
surname = data[:surname]
birthdate = data[:birthdate]
ano = ""
ano = ano.insert(-1,birthdate[-2]).insert(-1, birthdate[-1])

date = birthdate.gsub(/\W/,"")
num_soma = date[0].to_i + date[1].to_i 
num_soma.to_s
sum = num_soma[0].to_i + num_soma[1].to_i
sum_data = sum.to_s

tab = { "1": "A", "2": "B", "3": "C", "4": "D", "5": "E", "6": "H",
        "7": "L", "8": "M", "9": "P", "10": "R", "11": "S", "12": "T" }

if date[2].to_i == 0
    aux = date[3]
else
    aux = date[2].concat(date[3])
end
aux_tab = aux.to_sym
mes = tab[aux_tab]
code_num = ano.concat(mes, sum_data)



a=""
b=0
c="X"
a.insert(b,c)
p a


vog = "aeiouAEIOU"
cons = "bcdfghjlmnpqrstvxwyzBCDFGHIJLMNPQRSTVXYWZ"
surname.scan(/./).each.with_index { |item, i|  surname_len.insert(-1, item) }
surname.scan(/./).each.with_index { |item, i|  surname_vog.insert(-1, item)  if vog.include?(item) }
surname.scan(/./).each.with_index { |item, i|  surname_cons.insert(-1, item)  if cons.include?(item) }

if surname_len.length < 3 
    surname_len.insert(2, "X")
    code_sur.insert(0, surname_len)
elsif surname_cons.length >= 3
    code_sur.insert(0, surname_cons)
elsif surname_cons.length == 2
    code_sur.insert(0,surname_cons)
    code_sur.insert(2, surname_vog[0])
else surname_cons.length == 1
        code_sur.insert(0, surname_cons[0])
        code_sur.insert(1, surname_vog[0..1])
end
  

p surname_vog
p surname_cons
p code_sur.upcase

=end