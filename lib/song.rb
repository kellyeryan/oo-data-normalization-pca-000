require "pry"

class Song

  attr_accessor :artist, :title

  def slugify
    new_title = title.downcase.gsub(" ", "_")
    file = Tempfile.new([new_title, ".txt"], "tmp")
    file.write("#{artist.name} - #{title}")
    file.close
  end
end



# open and write to a file with ruby
# open('myfile.out', 'w') { |f|
  # f.puts "Hello, world."
# }
