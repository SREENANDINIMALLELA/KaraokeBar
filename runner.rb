require("minitest/autorun")
require("minitest/rg")
require_relative("KaraokeBar.rb")
require_relative("Song.rb")
require_relative("Guest.rb")
require_relative("Room.rb")
 puts "clear"
 puts "Who are you?"
user_input = gets.chomp()
if user_input == "Admin"
  puts "Enter your username :"
  username = gets.chomp()
  puts "Enter your password :"
  password = gets.chomp()
  puts " Congratulations , You are successfully login to the KaraokeBar "
  puts "Hi #{username} what do you want to do today? "
  puts "1 for Guest Management "
  puts "2 for Songs Management "
  puts "3 for Rooms Management "
  admin_action = gets.chomp()
  if admin_action == 1
    puts "1 for Check-in guest"
    puts "2 for check-out guest"
      user = gets.chomp()
       if user == 1

         puts "Please enter guest name1"



         #Please enter guest and room he is in interested in
         # uday , meloy-room3

         bar.checkin(guest.new("uday", get_melody_lover_playlist)





else
    puts "Sorry , others are not allowed to login"
end
