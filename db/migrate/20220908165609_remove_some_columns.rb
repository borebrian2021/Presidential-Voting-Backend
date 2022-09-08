class RemoveSomeColumns < ActiveRecord::Migration[6.1]
  def change

    drop_table :votes

    create_table :votes do |t|
    t.integer :party_id
    t.timestamps


  end
end
end