# options to writing to a file
main_dir = File.dirname(__FILE__) 

# writing a single line with a File.write call
filename1 = "#{main_dir}/sample_files/output1.txt"
File.write(filename1, "What a piece of work is a man?")

output1 = File.read(filename1)
puts output1