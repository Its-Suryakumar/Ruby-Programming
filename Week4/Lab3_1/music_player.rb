playlist = {}

def add_song_to_playlist(playlist)
  puts "Enter the song title:"
  title = gets.chomp

  puts "Enter the artist name:"
  artist = gets.chomp

  puts "Enter the genre:"
  genre = gets.chomp

  id = playlist.size + 1

  playlist[id] = { title: title, artist: artist, genre: genre }
end

def shuffle_and_play(playlist)
  shuffled_playlist = playlist.keys.shuffle

  puts "Playing songs in random order:"
  shuffled_playlist.each do |id|
    song = playlist[id]
    puts "Now playing: '#{song[:title]}' by #{song[:artist]} [#{song[:genre]}]"
  end
end

loop do
  add_song_to_playlist(playlist)

  puts "Do you want to add another song? (yes/no)"
  answer = gets.chomp.downcase
  break if answer != 'yes'
end

shuffle_and_play(playlist)
