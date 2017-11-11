class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

def self.create
song = Song.new
@@all << song
song
end

def self.new_by_name(name)
song = self.new
song.name = name
song
end

def self.create_by_name(name)
  song = self.create
  song.name = name
  song
end

def self.find_by_name(name)
self.all.detect{|song| song.name == name}
end

def self.find_or_create_by_name(name)
  self.find_by_name(name) || self.create_by_name(name)
end

def self.alphabetical
self.all.sort_by{|s| s.name}
end

def self.new_from_filename
new_arr = song.split(" - ")
artist_name = new_arr[0]
song_name = new_arr[1].gsub(".mp3", "")

song = self.new
song.name = song_name
artist.name = artist_name
song
end







def self.destroy_all
@@all.clear
end



end
