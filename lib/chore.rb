class Chore < ActiveRecord::Base
belongs_to :kid
belongs_to :star

def test
  puts "this is a test."
end

end
