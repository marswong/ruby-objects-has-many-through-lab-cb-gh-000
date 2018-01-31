class Artist
  attr_accessor :name, :songs, :genres

  def initialize(name)
    @name = name
    @songs = []
    @genres = []
  end

  def add_song(song)
    song.artist = self
    song.genre.artists << self if !song.genre.artists.include?(self)
    @songs << song
    @genres << song.genre if !@genres.include?(song.genre)
  end
end
