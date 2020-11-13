require 'pry'
# Add your code here
=begin songs = [
    "Phoenix - 1901", 
    "Tokyo Police Club - Wait Up", 
    "Surfjan Stevens - Too Much", 
    "The Naked and the Famous - Young Blood", 
    "(Far From) Home - Tiga", 
    "The Cults - Abducted", 
    "Phoenix - Consolation Prizes", 
    "Harry Chapin - Cats in the Cradle", 
    "Amos Lees - Keep It Loose, Keep It Tight"
]
=end


def help 
    puts "I accept the following commands:" 
    puts "- help : displays this help message"
    puts "- list : displays a list of songs you can play"
    puts "- play : lets you choose a song to play"
    puts "- exit : exits this program"
end

def list(songs)
    songs.each_with_index do |song, index|
        indexplusone = index + 1
        puts "#{indexplusone}. #{song}"
    end
end


def play(songs)
    puts "Please enter a song name or number:"
    user_input = gets.strip
    
    if songs.include?(user_input)
        puts "Playing #{user_input}"
    elsif (1..9).to_a.include?(user_input.to_i)
        puts "Playing #{songs[user_input.to_i - 1]}"
    else
        puts "Invalid input, please try again"
    end
end


def exit_jukebox
    puts "Goodbye"
end



def run(songs)
    #help
    command = ""
    while command
        puts "Please enter a command:"
        command = gets.strip
        case command
        when 'list'
            list(songs)
        when 'play'
            play(songs)
        when 'help'
            help
        when 'exit'
            exit_jukebox
            break
        else
            help
        end
    end
end
