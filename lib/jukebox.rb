# Add your code here
def help 
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def play(songs)
  puts "Please enter a song name or number: "
  user_choice = gets.strip
  music_played = false 
  songs.each do |song|
    if song.include?(user_choice)
      puts "Playing #{song}."
      music_played = true
    end
  end
  if !music_played
    puts "Invalid input, please try again"
    play(songs)
  end
end 