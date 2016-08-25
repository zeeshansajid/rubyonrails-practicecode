#!/usr/bin/env ruby
require 'profile'

def check_prime(first)
  isprime=true
  i = 2

  while ( i <= first / 2)
    if (first % i ==0)
      isprime=false
      break;
    end
    i +=1;
  end

  flag = isprime

end

def find_prime_numbers max
  first = 9

  while ( first <= max)

    if check_prime(first)
      printf first.to_s + ", ";
    end

    first +=2;
  end
end


puts "Find all prime numbers between 2 and max number"

printf "Input max number : "
max = gets.to_i;

if(max > 7)
  printf "2, 3, 5, 7, "
end

find_prime_numbers max
puts "\n"


=begin

  Technique used: I tried to breakdown my answer a previous attemp and implemented it using while loops. Also i 
  broke the two loops into simple functions the first function find_prime_number loops from test number to the max 
  number and checks if the test number is prime or not, by calling the check_prime function.

  The check_prime number goes from 2 till the test number to check if the number is prime or not if it is prime 
  it returns true else false, based on the value of flag which is set as the last line of the method.

  The two optimizations i added to improve the results are .
  1. I already know that after 7 no even number is a primary number, so i used the hardcoded prime numbers after 7 
  and after that increment the test number by 2 so that its always checking an odd number
  
  2. Secondly in the check prime function i am looping from 2 till the half of the number because if the number is 
  not divisible by 2, there is no point iterating beyond the half of the number.
  With these optimizations the profiler numbers are greatly improved, the time is almost down to 0.01s and the number 
  of calls have been greatly reduced.

Zeeshans-MacBook-Pro-2:classwork zeeshansajid$ ruby findingprimes_3.rb
Find all prime numbers between 2 and max number
Input max number : 300
2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97, 101, 103, 107, 109, 113, 127, 131, 
137, 139, 149, 151, 157, 163, 167, 173, 179, 181, 191, 193, 197, 199, 211, 223, 227, 229, 233, 239, 241, 251, 257, 263, 269, 271, 277, 281, 283, 293,
  %   cumulative   self              self     total
 time   seconds   seconds    calls  ms/call  ms/call  name
  0.00     0.00      0.00        1     0.00     0.00  TracePoint#disable
  0.00     0.00      0.00        2     0.00     0.00  Module#method_added
  0.00     0.00      0.00       63     0.00     0.00  IO#write
  0.00     0.00      0.00        2     0.00     0.00  IO#puts
  0.00     0.00      0.00        2     0.00     0.00  Kernel#puts
  0.00     0.00      0.00       60     0.00     0.00  Kernel#printf
  0.00     0.00      0.00        1     0.00     0.00  ARGF.class#gets
  0.00     0.00      0.00        1     0.00     0.00  Kernel#gets
  0.00     0.00      0.00        1     0.00     0.00  String#to_i
  0.00     0.00      0.00      146     0.00     0.00  Object#check_prime
  0.00     0.00      0.00       58     0.00     0.00  Fixnum#to_s
  0.00     0.00      0.00        1     0.00     0.00  Object#find_prime_numbers
  0.00     0.00      0.00        1     0.00     0.00  TracePoint#enable
  0.00     0.01      0.00        1     0.00    10.00  #toplevel
Zeeshans-MacBook-Pro-2:classwork zeeshansajid$
=end
