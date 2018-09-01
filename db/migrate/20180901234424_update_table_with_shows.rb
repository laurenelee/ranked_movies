class UpdateTableWithShows < ActiveRecord::Migration[5.1]
  def change
    rename_column :movies, :year, :url
    rename_column :movies, :director, :picture
    add_column :movies, :stars, :integer
    add_column :movies, :synopsis, :text
    change_column :movies, :url, :string
  end
end
