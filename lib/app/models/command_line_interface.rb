def welcome
    puts "Hello, welcome to BIG SPORTS CLI APP"
    puts "whats your name?"
    print "> "
    name = gets.chomp

    $user = User.create(name: name)
end

def display_options
    puts "You can say 'SEE MATCHES' to view all upcoming matches"
    puts "You can say 'FIND MATCHES' to find matches by team"
    puts "You can say 'MY FAVORITES' to view your favorites"
end

def user_input
    puts "What would you like to do?"
    print "> "
    answer = gets.chomp

    if answer == 'SEE MATCHES'
        ap Match.all
        user_input()
    elsif answer == 'FIND MATCHES'
        puts "What team would you like to find?"
        print "> "
        team = gets.chomp 
        ap Match.sort_by_team(team)
        add_to_favorites()
    elsif answer == 'MY FAVORITES' 
        ap $user.favorites
        user_input()
    else 
        puts "Sorry, improper input."
        user_input()
    end

end

def add_to_favorites
    puts "Would you like to add a match to your favorites? Y/N"
    answer = gets.chomp
        if answer == "Y"
            puts "Please select a match by ID"
            print "> "
            number = gets.chomp 
            Favorite.create(user_id: $user.id, match_id: number)
            puts "your favorites are now:"
            ap $user.favorites
            display_options()
            user_input()
        elsif answer == "N"
            display_options()
            user_input()
        else 
            puts "Sorry, improper input."
            user_input()
        end
end