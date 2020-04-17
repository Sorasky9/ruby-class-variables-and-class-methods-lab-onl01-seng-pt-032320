require 'pry'
class Song

  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

def initialize(name, artist, genre)
  @@count += 1
  @@genres << genre
  @@artists << artist

  @name = name
  @artist = artist
  @genre = genre
end
#The above initialize must have instance variables set for each argument.

def self.count
  @@count
end

def self.artists
#binding.pry
  @@artists.uniq
end

def self.genres
  @@genres.uniq

end

def self.genre_count
  hash_genre = {}
  @@genres.each do |key|
    #binding.pry

if hash_genre[key]
  hash_genre[key] += 1
else
  hash_genre[key] = 1

end
end
hash_genre

end

def self.artist_count
hash_artists = {}
@@artists.each do |key|

  if hash_artists[key]
    hash_artists[key] += 1
  else
    hash_artists[key] = 1
  end
end
hash_artists

end
end
