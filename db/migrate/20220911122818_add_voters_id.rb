class AddVotersId < ActiveRecord::Migration[6.1]
  def change
    add_column :votes, :voters_id, :string
  end
end
