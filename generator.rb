
def generate(n)
    (1..n).each do |i|
        filename = "files/#{Random.rand(1e9).to_i}.txt"
        File.write(filename, "Hello World!")
        `git add #{filename}`
        `git commit -m "Added #{filename}"`
    end
    `git push`
end