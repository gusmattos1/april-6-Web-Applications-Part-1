require 'erb'

kids_data   = File.read('data/kids-data.txt')
naughty_letter = File.read('templates/naughty_sample_template.txt.erb')

kids_data.each_line do |kid|

  kid_data_array = kid.split(" ")
  action_array = kid.split(" |  ")
  action = action_array[1]

  name     = kid_data_array[0]
  behavior = kid_data_array[1]
  toys     = kid_data_array[2..7]
  sample_toy = toys.sample
  while sample_toy == "Kaleidoscope"
    sample_toy = toys.sample
  end

  other_toys = []

  toys.each do |toy|
    if toy != sample_toy
      other_toys.push(toy)
    end
  end

  next unless behavior == 'naughty'

  filename    = 'letters/naughty/' + name + '.txt'
  letter_text = ERB.new(naughty_letter, nil, '-').result(binding)

  puts "Writing #{filename}."
  File.write(filename, letter_text)
end

puts 'Done!'
