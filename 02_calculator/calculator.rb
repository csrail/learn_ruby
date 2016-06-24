def add(num1, num2)
	num1 + num2
end

def subtract(num1, num2)
	num1 - num2
end

def sum(array=0)
	total = 0
	array.map do |x| total += x end
	total
end

def multiply(array)
	total = 1
	array.map do |x| total *= x end
	total
end

def power(base, factor)
	base**factor
end

def factorial(num)
	if num == 0; return 0 
	else
		total = 1
		array = (1..num).to_a
		array.map do |x| total *= x end
		total
	end
end