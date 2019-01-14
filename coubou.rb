require 'io/console'

h = [
  {'uni': 0x2318, 'name': 'Command'},
  {'uni': 0x2303, 'name': 'Control'},
  {'uni': 0x2325, 'name': 'Option'},
  {'uni': 0x21E7, 'name': 'Shift'},
  {'uni': 0x21EA, 'name': 'Caps Lock'},
  {'uni': 0x238B, 'name': 'Escape'},
]

i = 0
h.each do |u|
  print [u[:uni]].pack('U') + ":#{i+1}, "
  i += 1
end
puts ''

print 'Please input corresponding number & enter.'
puts ''
print 'Exit: ^c'
puts ''
puts ''

#loop do
str = ''
while c = STDIN.getch

  exit if c == ?\C-c
  exit if c == ?\C-z
  break if c == ?\r

  i = c.to_i - 1
#  p i
  if h[i] == nil or c.to_i == 0
    print c
    str << c + ' + '
  else
    print [h[i][:uni]].pack('U')
    str << h[i][:name] + ' + '
  end
end

# remove foot ' + '
str.slice!(str.size-3, str.size) if str[-1] == ' '
puts ''

print str
puts ''
#end
