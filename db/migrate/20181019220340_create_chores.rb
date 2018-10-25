class CreateChores < ActiveRecord::Migration[5.0]
  def change
      create_table :chores do |t|
        t.text :name
        t.integer :star_id
        t.integer :kid_id

      end

  end
end
