class Song
    attr_accessor :name
    attr_accessor :artist
    attr_accessor :genre
    
    #class methods
    @@artists = []
    @@genres = []
    @@count = 0
    @@artist_count = {}
    @@genre_count = {}
    
    def initialize(name,singer,genre)
        @name = name
        @artist = singer
        @genre = genre
        @@artists << @artist
        @@count += 1
        @@genres << @genre
    end
    def self.artists
        @@artists.uniq!
      end
    
      def self.genres
        @@genres.uniq!
      end
      
      def self.count
        @@count
      end
    
      def self.artist_count
        @@artist_count.default = 0

        @@artists.each { |artist| @@artist_count[artist] += 1}

    @@artists.each {|x| "#{x} : #{@@artist_count[x]}" }
    @@artist_count
      end  

      def self.genre_count
        @@genre_count.default = 0
        @@genres.each{|genre| @@genre_count[genre] +=1}
        # @@genres.each {}
        @@genre_count
      end
end  

Song.new("Lucifer", "Jay-Z", "rap")
Song.new("99 Problems", "Jay-Z", "rap")
Song.new("hit me baby one more time", "Brittany Spears", "pop")