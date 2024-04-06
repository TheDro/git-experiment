
def generate(n)
    (1..n).each do |i|
        filename = "files/#{Random.rand(1e9).to_i}.txt"
        File.write(filename, "Hello World!")
        # `git add #{filename}`
        # `git commit -m "Added #{filename}"`
    end
    # `git push`
end

def generate_at(date)
    filename = "files/#{Random.rand(1e9).to_i}.txt"
    File.write(filename, "Hello World!")
    `git add #{filename}`
    `git commit -m "Added #{filename}" --date "#{date}"`
    `git push`
end

# generate_at(Time.new(2024, 3, 12, 8, 30))
# generate_at(Time.new(2024, 3, 19, 8, 30))
# generate_at(Time.new(2024, 3, 20, 8, 30))
# generate_at(Time.new(2024, 3, 21, 8, 30))
# generate_at(Time.new(2024, 3, 14, 8, 30))
