class AddColumnForImageInPlayers < ActiveRecord::Migration
  def up
    add_column :players, :player_image_file_name, :string
    add_column :players, :player_image_content_type, :string
    add_column :players, :player_image_file_size, :integer
  end

  def down
  end
end
