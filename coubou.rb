require 'io/console'

num_to_uni = {
  '1': 0x2318, # Command
  '2': 0x2303, # Control
  '3': 0x2325, # Option
  '4': 0x21E7, # Shift
  '5': 0x21EA, # Caps Lock
  '6': 0x238B, # Escape
}

num_to_name = {
  '1': 'Command',
  '2': 'Control',
  '3': 'Option',
  '4': 'Shift',
  '5': 'Caps Lock',
  '6': 'Escape',
}

i = 1
num_to_uni.each_value do |v|
  print [v].pack('U') + ":#{i}, "
  i += 1
end
puts ''

print 'Please input shotcut key number & enter.'
puts ''
print 'Exit: ^c'
puts ''

str = ''
while c = STDIN.getch
#  p c
#  str << c
  exit if c == ?\C-c
  break if c == ?\r
  i = c.to_sym
  print [num_to_uni[i]].pack('U')
  str << num_to_name[i] + ' + '
end

str.slice!(str.size-3, str.size) if str[-1] == ' '
puts ''

print str
puts ''
