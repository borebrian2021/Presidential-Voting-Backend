class CreateCandidates < ActiveRecord::Migration[6.1]
  def change
    create_table :candidates do |t| 
      t.string :name
      t.string :party_name
    
  end
end
end