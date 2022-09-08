class CreateVotes < ActiveRecord::Migration[6.1]
  def change
    create_table :votes do |t|
    t.string :voters_id
    t.string :candidate_id
  end
end
end