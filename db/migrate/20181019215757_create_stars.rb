class CreateStars < ActiveRecord::Migration[5.0]
  def change
    create_table :stars do |t|
      t.string :color
      t.integer :power
    end
  end
end
