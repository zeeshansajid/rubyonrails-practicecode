#!/usr/bin/env ruby
require 'profile'
require 'Prime'

puts "Find all prime numbers between 2 and max number"

printf "Input max number : "
max = gets.to_i;
Prime.each(max) { |prime| p prime }


=begin
  Technique used: I used the available class Prime in ruby and was able to find the list of primes in 2 lines.
  Here is the output of the program and i can see that the time and calls to specific functions are reduced which means it is an optimized class.

Zeeshans-MacBook-Pro-2:classwork zeeshansajid$ ruby findingprimes_2.rb
Find all prime numbers between 2 and max number
Input max number : 300
2
3
5
7
11
13
17
19
23
29
31
37
41
43
47
53
59
61
67
71
73
79
83
89
97
101
103
107
109
113
127
131
137
139
149
151
157
163
167
173
179
181
191
193
197
199
211
223
227
229
233
239
241
251
257
263
269
271
277
281
283
293
  %   cumulative   self              self     total
 time   seconds   seconds    calls  ms/call  ms/call  name
100.00     0.01      0.01      212     0.05     0.05  Array#size
  0.00     0.01      0.00       12     0.00     0.00  Thread.current
  0.00     0.01      0.00        4     0.00     0.00  Thread::Mutex#lock
  0.00     0.01      0.00        4     0.00     0.00  MonitorMixin#mon_enter
  0.00     0.01      0.00        4     0.00     0.00  Kernel#respond_to?
  0.00     0.01      0.00        4     0.00     0.00  Gem.suffixes
  0.00     0.01      0.00       16     0.00     0.00  Gem.find_unresolved_default_spec
  0.00     0.01      0.00        6     0.00     0.00  Array#each
  0.00     0.01      0.00        4     0.00     0.00  Gem::Specification.unresolved_deps
  0.00     0.01      0.00        4     0.00     0.00  MonitorMixin#mon_check_owner
  0.00     0.01      0.00        4     0.00     0.00  Thread::Mutex#unlock
  0.00     0.01      0.00        4     0.00     0.00  MonitorMixin#mon_exit
  0.00     0.01      0.00        6     0.00     0.00  IO#set_encoding
  0.00     0.01      0.00        8     0.00     0.00  Kernel#require
  0.00     0.01      0.00       50     0.00     0.00  Module#method_added
  0.00     0.01      0.00        3     0.00     0.00  Module#private
  0.00     0.01      0.00       21     0.00     0.00  BasicObject#singleton_method_added
  0.00     0.01      0.00        1     0.00     0.00  BasicObject#singleton_method_undefined
  0.00     0.01      0.00        1     0.00     0.00  Module#undef_method
  0.00     0.01      0.00        1     0.00     0.00  Regexp.quote
  0.00     0.01      0.00        1     0.00     0.00  Module#attr_accessor
  0.00     0.01      0.00        7     0.00     0.00  Class#inherited
  0.00     0.01      0.00        6     0.00     0.00  Module#append_features
  0.00     0.01      0.00        6     0.00     0.00  Module#included
  0.00     0.01      0.00        6     0.00     0.00  Module#include
  0.00     0.01      0.00        3     0.00     0.00  Kernel#instance_of?
  0.00     0.01      0.00        3     0.00     0.00  Singleton.append_features
  0.00     0.01      0.00        3     0.00     0.00  Module#private_class_method
  0.00     0.01      0.00        4     0.00     0.00  Module#extend_object
  0.00     0.01      0.00        4     0.00     0.00  Module#extended
  0.00     0.01      0.00        4     0.00     0.00  Kernel#extend
  0.00     0.01      0.00        3     0.00     0.00  Thread::Mutex#initialize
  0.00     0.01      0.00        6     0.00     0.00  Class#new
  0.00     0.01      0.00        6     0.00     0.00  Singleton.__init__
  0.00     0.01      0.00        3     0.00     0.00  BasicObject#instance_eval
  0.00     0.01      0.00        3     0.00     0.00  Singleton.included
  0.00     0.01      0.00       12     0.00     0.00  Symbol#to_s
  0.00     0.01      0.00        4     0.00     0.00  Module#module_eval
  0.00     0.01      0.00        4     0.00     0.00  Forwardable#def_instance_delegator
  0.00     0.01      0.00        4     0.00     0.00  Prime.method_added
  0.00     0.01      0.00        3     0.00     0.00  IO#write
  0.00     0.01      0.00        1     0.00     0.00  IO#puts
  0.00     0.01      0.00        1     0.00     0.00  Kernel#puts
  0.00     0.01      0.00        1     0.00     0.00  Kernel#printf
  0.00     0.01      0.00        1     0.00     0.00  ARGF.class#gets
  0.00     0.01      0.00        1     0.00     0.00  Kernel#gets
  0.00     0.01      0.00        1     0.00     0.00  String#to_i
  0.00     0.01      0.00        1     0.00     0.00  BasicObject#initialize
  0.00     0.01      0.00        2     0.00     0.00  Prime.instance
  0.00     0.01      0.00        2     0.00     0.00  Thread::Mutex#synchronize
  0.00     0.01      0.00        1     0.00     0.00  Prime::PseudoPrimeGenerator#initialize
  0.00     0.01      0.00        1     0.00     0.00  Prime::EratosthenesGenerator#initialize
  0.00     0.01      0.00        1     0.00     0.00  Prime::PseudoPrimeGenerator#upper_bound=
  0.00     0.01      0.00        1     0.00     0.00  Kernel#block_given?
  0.00     0.01      0.00      227     0.00     0.00  Fixnum#+
  0.00     0.01      0.00        3     0.00     0.00  Array#last
  0.00     0.01      0.00        1     0.00     0.00  Prime::EratosthenesSieve#initialize
  0.00     0.01      0.00       64     0.00     0.00  Prime::EratosthenesSieve.instance
  0.00     0.01      0.00       65     0.00     0.00  Fixnum#<=
  0.00     0.01      0.00       77     0.00     0.00  Array#[]
  0.00     0.01      0.00       63     0.00     0.16  Prime::EratosthenesSieve#get_nth_prime
  0.00     0.01      0.00       63     0.00     0.16  Prime::EratosthenesGenerator#succ
  0.00     0.01      0.00       81     0.00     0.00  Fixnum#>
  0.00     0.01      0.00       62     0.00     0.00  Fixnum#inspect
  0.00     0.01      0.00       62     0.00     0.00  Kernel#p
  0.00     0.01      0.00       62     0.00     0.00  nil#
  0.00     0.01      0.00       64     0.00     0.31  Prime::PseudoPrimeGenerator#each
  0.00     0.01      0.00        2     0.00     0.00  Float#to_i
  0.00     0.01      0.00        2     0.00     0.00  Fixnum#*
  0.00     0.01      0.00       18     0.00     0.00  Fixnum#<=>
  0.00     0.01      0.00        2     0.00     0.00  Enumerable#min
  0.00     0.01      0.00        2     0.00     0.00  Math.sqrt
  0.00     0.01      0.00        2     0.00     0.00  Float#floor
  0.00     0.01      0.00        2     0.00     0.00  Kernel#Integer
  0.00     0.01      0.00        4     0.00     0.00  Range#step
  0.00     0.01      0.00      149     0.00     0.00  Fixnum#<
  0.00     0.01      0.00        2     0.00     0.00  Enumerator#each
  0.00     0.01      0.00        2     0.00     0.00  Enumerable#to_a
  0.00     0.01      0.00       12     0.00     0.00  Fixnum#-@
  0.00     0.01      0.00       12     0.00     0.00  Fixnum#/
  0.00     0.01      0.00       12     0.00     0.00  Fixnum#%
  0.00     0.01      0.00      135     0.00     0.00  Array#[]=
  0.00     0.01      0.00       16     0.00     1.25  Prime::EratosthenesSieve#compute_primes
  0.00     0.01      0.00       12     0.00     0.00  Fixnum#succ
  0.00     0.01      0.00        2     0.00     5.00  Range#each
  0.00     0.01      0.00        2     0.00     0.00  Array#compact!
  0.00     0.01      0.00        2     0.00     0.00  Array#concat
  0.00     0.01      0.00        1     0.00    10.00  Kernel#loop
  0.00     0.01      0.00        1     0.00    10.00  Prime#each
  0.00     0.01      0.00        1     0.00    10.00  Prime.each
  0.00     0.01      0.00        1     0.00     0.00  TracePoint#enable
  0.00     0.01      0.00        1     0.00     0.00  TracePoint#disable
  0.00     0.01      0.00        1     0.00    10.00  #toplevel


=end