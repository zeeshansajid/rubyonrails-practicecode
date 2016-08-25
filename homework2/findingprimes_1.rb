#!/usr/bin/env ruby
require 'profile'

def find_prime_numbers max_number
  for i in (2..max_number)
    for j in (2..i)
      break if (i%j == 0)
    end

    if (i==j)
      printf "#{i},"
    end
  end
end

puts "Find all prime numbers between 2 and max number"

printf "Input max number : "
max = gets.to_i;

find_prime_numbers max


=begin
  Technique used: the simple 2 for loop from the start till the end, later on I added improvements to start from 2 rather than 0.
  Here is the output of the program and i can see that there are so many calls and it takes alot of time for Object#find_prime_numbers

  Zeeshans-MacBook-Pro-2:classwork zeeshansajid$ ruby findingprimes_1.rb
  Find all prime numbers between 2 and max number
  Input max number : 300
  2,3,5,7,11,13,17,19,23,29,31,37,41,43,47,53,59,61,67,71,73,79,83,89,97,101,103,107,109,113,127,131,137,139,149,151,157,163,167,173,179,181,191,193,197,199,211,223,227,229,233,239,241,251,257,263,269,271,277,281,283,293,  %   cumulative   self              self     total
   time   seconds   seconds    calls  ms/call  ms/call  name
   50.00     0.03      0.03      300     0.10     0.37  Range#each
   50.00     0.06      0.03     9010     0.00     0.02  Object#find_prime_numbers
    0.00     0.06      0.00       65     0.00     0.00  IO#write
    0.00     0.06      0.00        1     0.00     0.00  IO#puts
    0.00     0.06      0.00        1     0.00     0.00  Kernel#puts
    0.00     0.06      0.00       63     0.00     0.00  Kernel#printf
    0.00     0.06      0.00        1     0.00     0.00  ARGF.class#gets
    0.00     0.06      0.00        1     0.00     0.00  Kernel#gets
    0.00     0.06      0.00        1     0.00     0.00  String#to_i
    0.00     0.06      0.00       62     0.00     0.00  Fixnum#to_s
    0.00     0.06      0.00        1     0.00     0.00  TracePoint#enable
    0.00     0.06      0.00        1     0.00     0.00  TracePoint#disable
    0.00     0.06      0.00        1     0.00     0.00  Module#method_added
    0.00     0.06      0.00        1     0.00    60.00  #toplevel

=end