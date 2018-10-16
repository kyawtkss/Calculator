puts "Hello! Please type your name: "
name = gets.chomp
puts "Nice To Meet You,#{name}!"

puts "Enter First Value:"
val1 = gets.chomp.to_i

puts "Enter Second Value:"
val2 = gets.chomp.to_i

add = val1+val2
sub = val1-val2
mul = val1*val2
div = val1/val2
rem = val2/val1
puts "The addition result is #{add}"
puts "The substraction result is #{sub}"
puts "The Multiplication result is #{mul}"
puts "The division result is #{div}"
puts "The remainder result is #{rem}"


puts "Please enter the operator:"
operator = gets.chomp
case operator
    when "+"
        puts "Result = #{add}"
    when "-"
        puts "Result = #{sub}"
    when "*"
        puts "Result = #{mul}"
    when "/"
        puts "Result = #{div}"
    when "%"
        puts "Result = #{rem}"
    else 
        puts "I do not understand this type of operator.Please try again!"    
    end
loop do
    puts "Do you want to perform operation again?"
    answer = gets.chomp
if answer == 'N'
break
else
    f = File.new('output.txt','a')
    puts "Enter First Value:"
    val1 = gets.chomp.to_i
    f.write("First value is #{val1}\n")
    
    puts "Enter Second Value:"
    val2= gets.chomp.to_i
    f.write("Second value is #{val2}\n")
    
    puts "Please enter the operator:"
    operator = gets.chomp
    f.write("operator is #{operator}\n")
   
    add = val1+val2
    sub = val1-val2
    mul = val1*val2
    div = val1/val2
    rem = val2/val1
    case operator
    when "+"
        puts "Result = #{add}"
        f.write("The result is #{add}\n")
    when "-"
        puts "Result = #{sub}"
        f.write("The result is #{sub}\n")
    when "*"
        puts "Result = #{mul}"
        f.write("The result is #{mul}\n")
    when "/"
        puts "Result = #{div}"
        f.write("The result is #{div}\n")
    when "%"
        puts "Result = #{rem}"
        f.write("The result is #{rem}\n")
    else 
        puts "I do not understand this type of operator.Please try again!"    
    end
    end
end