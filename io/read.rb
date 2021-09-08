# reading the entire content

# get the current working directory for this file
main_dir = File.dirname(__FILE__)

# capture all the text
all_text = File.read("#{main_dir}/sample_files/simple.txt")
puts all_text
