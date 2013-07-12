#!/usr/bin/ruby


class Array
  def test01

    return self if (self.empty?) 

    i = 1
    ary = Array.new

    each_cons(2) { |a|

      if a[0] == a[1]
        i += 1
      else
        ary += [i] + [a[0]]
        i = 1
      end
    }

    ary + [i] + [self.last]

  end
end


# PROGRAM START

puts

t = 0
arg1 = ARGV.shift

if (arg1 == nil)
  puts "Example ./test01 10" if arg1 == nil
else
  begin
    t = Integer(arg1)
  rescue Exception
    puts "#{arg1} is not valid Integer value"
  end
end

puts "Iterations: #{t}" 
puts


s = [1]
t.times {
  puts s * ""
  s = s.test01
} 
