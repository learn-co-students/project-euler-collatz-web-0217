def even_next(n)
  n/2
end

def odd_next(n)
  3*n + 1
end

def next_value(n)
 (n.even?) ? even_next(n) : odd_next(n)
end

def collatz(n)
  collatz_seq = [ ]
  until n == 1 do
    collatz_seq << n
    n = next_value(n)
  end
  collatz_seq << 1
end

def longest_collatz
  # def longest_collatz(limit) for any limit 
  limit = 1000000
  longest_collatz_length = 0
  first_num = 0
  (1...limit).each do |num|

 if (collatz(num).length > longest_collatz_length)
   first_num = num
   longest_collatz_length = collatz(num).length
 end
  end
  first_num
end
