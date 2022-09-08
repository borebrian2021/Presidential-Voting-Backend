class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    
    create_table :voters do |t|
      t.string :name
      t.string :age
      t.string :county
      t.string :gender
  end
end
end