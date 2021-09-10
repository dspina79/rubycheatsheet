# options to writing to a file
main_dir = File.dirname(__FILE__) 

# writing a single line with a File.write call
filename1 = "#{main_dir}/sample_files/output1.txt"
File.write(filename1, "What a piece of work is a man?")

output1 = File.read(filename1)
puts output1 # outputs "What a piece of work is a man?"

# writing individual lines
filename2 = "#{main_dir}/sample_files/output2.txt"
File.open(filename2, "w") do |file|
    for linenumber in 1..5 do    
        file.puts("This is line #{linenumber}")
    end
end

output2 = File.read(filename2)
puts output2
# ^^^ outputs
=begin
This is line 1
This is line 2
This is line 3
This is line 4
This is line 5
=end