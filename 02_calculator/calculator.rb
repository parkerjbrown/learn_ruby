#Addition function

def add num1, num2
  num1 + num2
end

def subtract num1, num2
  num1 - num2
end

def sum array
  array.inject(0) do |total, number|
    total + number
  end
end

def multiply (num, *nums)
  product = num
  nums.each do |num|
    product *= num
  end
  product
end

def power num, power
  num ** power
end

def factorial num
  if num == 0
    1
  else
    num.downto(1).reduce(:*)
  end
end
