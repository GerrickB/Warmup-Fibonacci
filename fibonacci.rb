def fibs(input)
  fib_array = []
  # subtract 1 to include 0 from input
  input -= 1
  for i in 0..input
    if i == 0 || i == 1
      fib_array.push(i)
      p fib_array
    else
      #x = fib_array[i - 1] + fib_array[i - 2]
      sqrt5 = Math.sqrt(5); 
      x = (((1 + sqrt5)** i) - ((1  - sqrt5)** i)) / ((2 ** i) * sqrt5)
      fib_array.push(x.round)
      p fib_array
    end
  end
end

#unshift to populate array

#fibs(8)

def fibs_rec(input, rec_array = [])
  if (input < 0) 
    return rec_array
  elsif input == 0 || input == 1
    return rec_array.push(input)
  else
    sqrt5 = Math.sqrt(5); 
    x = (((1 + sqrt5)** input) - ((1  - sqrt5)** input)) / ((2 ** input) * sqrt5)
    rec_array.push(x.round)
  end
  return fibs_rec(input - 1, rec_array)
end

p fibs_rec(8)