class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    artist = filename.split(" - ")[0]
    song = Song.new(filename.split(" - ")[1])
    song.artist = Artist.find_or_create_by_name(artist)
    song
  end

end
