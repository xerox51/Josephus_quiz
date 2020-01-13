def solver
  print "Please input the total number of person you need:"
  num1 = gets.chomp.to_i
  print "Please input the order number of person you want to kill (This number should be less then the total number):"
  num2 = gets.chomp.to_i
  sequence = Array.new(num1, false)
  list_a = Array.new
  num = 1
  while (judge(sequence))
    for i in 0..num1 - 1
      unless sequence[i]
        if num == num2
          sequence[i] = true
          temp = i + 1
          list_a << temp
          num = 1
        else
          num += 1
        end
      end
    end
  end
  puts "Josephus sequence is "
  print list_a
end

def judge(args)
  for item in args
    if item == false
      return true
    end
  end
  return false
end

solver()
