require_relative '../config/environment'



#1

puts "                          🤩🤩🤩🤩🤩🤩🤩🤩🤩🤩🤩🤩🤩🤩🤩🤩🤩🤩🤩🤩🤩🤩🤩🤩🤩🤩"
puts "                          🤩                                                🤩"
puts "                          🤩 Welcome to Zack and Devon's Star Chart Rewards 🤩".yellow
puts "                          🤩                                                🤩"
puts "                          🤩🤩🤩🤩🤩🤩🤩🤩🤩🤩🤩🤩🤩🤩🤩🤩🤩🤩🤩🤩🤩🤩🤩🤩🤩🤩"
`afplay music/Game_show_winning.mp3`
`say -v Susan "Hello, and welcome to Zack and Devon's Star Chart Rewards Program"`

#2
puts "Can I have your name please?".yellow
`say -v Susan "Can I have your name please?"`

$kid_name = gets.chomp
puts `clear`

#--------------------spinner---------------
spinner = TTY::Spinner.new("Logging you in :spinner :spinner :spinner ", format: :spin_2)
    spinner.auto_spin
    sleep(2)
    spinner.stop('Done!')

#--------------------end spinner--------------

def add_a_star(name)
  puts `clear`
  `say -v Susan "Now what color of star do you want?"`
  puts "What color star do would you like?".yellow
  puts "                "
  puts "(1)Blue⭐️".blue
  puts "         "
  puts"(2)Red⭐️".red
  puts "         "
  puts"(3)Gold⭐️".yellow
  puts "         "
  puts"(4)Green⭐️".green
  puts "         "
  puts "Select (1) (2) (3) or (4)"
  `say -v Susan "Please select 1 for Blue, 2 for Red, 3 for Gold or 4 for Green."`
  color= gets.chomp
  if color == "1"
    blue = Star.create(color:"Blue")
    blue.chores << $chore
    blue

    `afplay music/Marimba-alert.mp3`
    puts "great job!"

                     puts"                ,O,"
                     puts"               ,OOO,"
                     puts"         'oooooOOOOOooooo'"
                     puts"           `OOOOOOOOOOO`"
                     puts"             `OOOOOOO`"
                     puts"             OOOO'OOOO"
                     puts"            OOO'   'OOO"
                     puts"           O'         'O"





    `say -v Susan "Congratulations you now  have a blue star!"`
    system "sl"
    `afplay music/Star_Wars.mp3`
  elsif
    color == "2"
    red = Star.create(color:"Red")
    red.chores << $chore
    red

    `afplay music/Marimba-alert.mp3`
    puts "great job!"

    puts"                ,O,"
    puts"               ,OOO,"
    puts"         'oooooOOOOOooooo'"
    puts"           `OOOOOOOOOOO`"
    puts"             `OOOOOOO`"
    puts"             OOOO'OOOO"
    puts"            OOO'   'OOO"
    puts"           O'         'O"



    `say -v Susan "Good job! You now  have a red star!"`
    system "sl"
    `afplay music/ImagineDragons-Thunder.mp3`
  elsif
    color == "3"
    gold = Star.create(color:"Gold")
    gold.chores << $chore
    gold
    puts "great job!"

    puts"                ,O,"
    puts"               ,OOO,"
    puts"         'oooooOOOOOooooo'"
    puts"           `OOOOOOOOOOO`"
    puts"             `OOOOOOO`"
    puts"             OOOO'OOOO"
    puts"            OOO'   'OOO"
    puts"           O'         'O"

    `afplay music/Marimba-alert.mp3`
    `say -v Susan "Good job! You now  have a gold star!"`
    system "sl"
    `afplay music/Ghostbusters_theme_song_HD.mp3`
  elsif
    color == "4"
    green = Star.create(color:"Green")
    green.chores << $chore
    green

    `afplay music/Marimba-alert.mp3`
    puts "great job!"

    puts"                ,O,"
    puts"               ,OOO,"
    puts"         'oooooOOOOOooooo'"
    puts"           `OOOOOOOOOOO`"
    puts"             `OOOOOOO`"
    puts"             OOOO'OOOO"
    puts"            OOO'   'OOO"
    puts"           O'         'O"

    `say -v Susan "Good job! You now  have a green star!"`
    system "sl"
    `afplay music/HappyHolidaysJingleBells.mp3`

  end
  if kid_id.count_stars >= 10
    `say -v Susan "Congratulations!  You have won an award!"`
  end
end


  #helper method for varialbe to kid
  def kid_id
      Kid.all.find_by(name:$kid_name)
  end

#5
  def what_to_do_today
      puts "🤩🤩🤩🤩🤩🤩🤩🤩🤩🤩🤩🤩🤩🤩🤩🤩🤩🤩🤩"
      puts "What would you like to do today #{$kid_name}?"
      `say -v Susan "What would you like to do today?"`
      puts "🤩🤩🤩🤩🤩🤩🤩🤩🤩🤩🤩🤩🤩🤩🤩🤩🤩🤩🤩"
      what_else_today
  end

  def what_else_to_do_today
      puts "🤩🤩🤩🤩🤩🤩🤩🤩🤩🤩🤩🤩🤩🤩🤩🤩🤩🤩🤩🤩🤩🤩🤩🤩🤩🤩🤩🤩🤩"
      puts "What else would you like to do today #{$kid_name}?"
      `say -v Susan "What else would you like to do today?"`
      puts "🤩🤩🤩🤩🤩🤩🤩🤩🤩🤩🤩🤩🤩🤩🤩🤩🤩🤩🤩🤩🤩🤩🤩🤩🤩🤩🤩🤩🤩"
      what_else_today
  end


def what_else_today
puts `clear`
puts "1. Add new stars⭐️"
puts "2. Count your stars🔢"
puts "3. Find out how many stars you need to get a reward💰"
puts "Please select:  (1) (2) or (3)"
`say -v Susan "(1) Add new stars. (2) Count your stars. or (3) Find out how many stars you need to get a reward."`
pick = gets.chomp
puts `clear`
puts "-------------------------------"


  if pick == "1"
    puts `clear`
    `say -v Susan "You selected 1"`
    puts "Congratulations!"
    kid_id.what_you_did
  elsif
    pick == "2"
    puts `clear`
    `say -v Susan "You selected 2"`
    `say -v Susan "Okay lets count your stars"`
    kid_id.count
    pick = nil

    # puts "#{$existing_kid.count_star}"
  elsif
    pick == "3"
    puts `clear`
    `say -v Susan "You selected 3"`
    kid_id.stars_until_reward
  end

end




  #4
  def create_kid(named)
    #had to use exists? method to make sure if it was truthy.
    if  Kid.exists?(name:named)
      $existing_kid = Kid.all.find_by(name:named)
          puts "Welcome back #{named}!"
          `say -v Susan "Welcome back #{named}"`
          sleep(1)
          puts `clear`
        else
          $existing_kid = Kid.create(name:"#{named}")
          puts "Welcome #{named}, to your new REWARDS STAR CHART!"
            `say -v Susan "Welcome #{named}, to your new REWARDS STAR CHART!"`
            sleep(1)
            puts `clear`
        end
        what_to_do_today
      end
      #3
      create_kid($kid_name)




#
