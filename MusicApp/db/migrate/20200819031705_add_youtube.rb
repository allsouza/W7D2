class AddYoutube < ActiveRecord::Migration[5.2]
  def change
    add_column :tracks, :youtube, :string
  end
end
