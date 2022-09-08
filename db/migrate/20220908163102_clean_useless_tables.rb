class CleanUselessTables < ActiveRecord::Migration[6.1]
  def change
    drop_table  :voters
    drop_table  :candidates
  end
end
