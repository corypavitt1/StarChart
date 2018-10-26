class Kid < ActiveRecord::Base

has_many :chores
has_many :stars, through: :chores

    def stars_until_reward
        total_left = 10 - count_stars
        puts "#{total_left}"
        `say -v Susan "It looks like you need #{total_left} more stars until you get that reward."`
          what_else_to_do_today
    end

    def what_you_did
      puts `clear`
      puts "You must have been very good!"
      puts `clear`
      `say -v Susan "You must have been very good."`
      `say -v Susan "So...Tell me what chore you did."`
      puts "What chore did you do to get a star?"
      $chore = gets.chomp
      `say -v Susan "oh great! Good job! You #{$chore}"`
      $chore = Chore.create(name:"#{$chore}")

      kid_id.chores << $chore

      puts "Great work #{kid_id.name}! You are so good at doing your chores!"
      add_a_star(kid_id)

    end

        def count_stars
             self.chores.all.count
        end

#count the total number of starts
        def count
          if count_stars == 0
            puts "It looks like you don't have any stars😒. Please be good and do your chores."
            `say -v Susan "It looks like you don't have any stars. Please be good and do your chores."`
            $pick = nil
            what_else_to_do_today
          else
            puts "You have a total of #{count_stars} stars 🌟"
            `say -v Susan "You have a total of #{count_stars}starts! Good Job!"`
            $pick = nil
            what_else_to_do_today


          end
        end
      end
