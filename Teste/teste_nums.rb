numbers_text = <<~NUMBERS
      +7
      -3
      +10
      -0
    NUMBERS
    a = numbers_text.split("\n")
    soma = 0
    a.each { |n| soma += n.to_i}
  #a = numbers_text
  puts soma
 
 #puts "#{a.sum}"

 #a = "-7".to_i
 #b = "4".to_i
#puts a + b






