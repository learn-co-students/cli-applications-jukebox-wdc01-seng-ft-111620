# Add your code here


def help 
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end 

def list(songs)
  i = 1 
  songs.each_with_index do |song, idx|
    puts "#{idx+1}. #{song}"
  end 
end 

def play(songs)
  puts "Please enter a song name or number:"
  user_response = gets.chomp
  array = (1..9).to_a
  if array.include?(user_response.to_i) 
    puts "Playing #{songs[user_response.to_i - 1]}"
  elsif songs.include?(user_response)
    puts "Playing #{user_response}"
  else 
    puts "Invalid input, please try again"
  end
end


def exit_jukebox
  puts "Goodbye"
  
end

def run(songs)
  puts "Please enter a command:"
  user_input = gets.strip
  return exit_jukebox if user_input.downcase == "exit"
    if user_input == "help"
      help
    elsif user_input == "list"
      list(songs)
    elsif user_input == "play"
      play(songs)
    else 
      puts "Invalid command"
    end
    run(songs)
  
end 
