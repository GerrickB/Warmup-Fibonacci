def fibs(input)
  fib_array = []
  # subtract 1 to include 0 from input
  input -= 1
  for i in 0..input
    if i == 0 || i == 1
      fib_array.push(i)
      p fib_array
    else
      x = fib_array[i - 1] + fib_array[i - 2]
      fib_array.push(x)
      p fib_array
    end
  end
end

#unshift to populate array

fibs(8)