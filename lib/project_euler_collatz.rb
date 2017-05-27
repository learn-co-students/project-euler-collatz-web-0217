def even_next(n)
  n / 2
end

def odd_next(n)
  (3 * n) + 1
end

def next_value(n)
  if n % 2 == 0
    even_next(n)
  else
    odd_next(n)
  end
end

def collatz(n)
  array = []
  until n == 1
    array.push(n)
    n = next_value(n)
  end
  array.push(1)
end

def longest_collatz
  n = 1
  x = 1
  xlong = 1

  until n == 1000000
    if collatz(n).length > xlong
      xlong = collatz(n).length
      x = n
    end
    n += 1
  end
  return x
end
