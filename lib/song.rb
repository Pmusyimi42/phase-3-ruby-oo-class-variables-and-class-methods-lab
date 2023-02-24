require "pry"
class Song
    attr_accessor :name, :artist, :genre
    @@count = 0
    @@genres = []
    @@artists = []
    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1

        @@genres.push(@genre)
        @@artists.push(@artist)
    end

    def self.count
        @@count
    end

    def self.genres
        @@genres.uniq
    end

    def self.artists
        @@artists.uniq
    end
    def self.genre_count
        my_hash = {}
        @@genres.each do |genre|
            if my_hash[genre]
                my_hash[genre] += 1
            else 
                my_hash[genre] = 1
            end
        end
        my_hash
    end
    def self.artist_count
        my_artists = {}
        @@artists.each do |artist|
            if my_artists[artist]
                my_artists[artist] += 1
            else
                my_artists[artist] = 1
            end
        end
        my_artists
    end
    
end

gospel = Song.new("Tumwinie Ngai", "Patrick Kisyula", "gospel")

another_song = Song.new("Father Mikutho", "Ben Mbatha", "benga")

new_song = Song.new("Mbaka", "Fred Kioko", "benga")

binding.pry


