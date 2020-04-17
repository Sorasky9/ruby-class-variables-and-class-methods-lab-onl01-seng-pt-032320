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
  hash_genre = {} #Here we set an empty hash
  @@genres.each do |key| #we iterate over the @@genre class
    #binding.pry

if hash_genre[key] # we set an "if" statement by saying "if hash_genre which has the key values from the @@ genres class is the default hash value
  hash_genre[key] += 1 #we add the value or increment the value by 1.
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
