class AddRankToPlayer < ActiveRecord::Migration
  def change
    add_column :players, :rank, :integer
  end
end
