# reading the entire content

# get the current working directory for this file
main_dir = File.dirname(__FILE__)

# capture all the text
all_text = File.read("#{main_dir}/sample_files/simple.txt")
puts all_text

# ^^^ outputs 
=begin
Once upon a time
not so long ago
there lived three bears.
A mama bear
A papa bear
And a baby bear.
=end

# read the text line by line

line_collection = File.readlines("#{main_dir}/sample_files/simple.txt")
line_num = 1
line_collection.each do |line|
    puts "#{line_num}:\t#{line}"
    line_num += 1
end

# ^^^ outputs 
=begin
1:      Once upon a time
2:      not so long ago
3:      there lived three bears.
4:      A mama bear
5:      A papa bear
6:      And a baby bear.
=end

