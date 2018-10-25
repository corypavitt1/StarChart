class CreateKids < ActiveRecord::Migration[5.0]
  def change
    create_table :kids do |t|
      t.string :name
      t.integer :age
      t.string :birthday
      t.string :start_date
    end
  end
end
