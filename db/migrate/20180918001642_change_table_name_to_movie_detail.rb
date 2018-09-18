class ChangeTableNameToMovieDetail < ActiveRecord::Migration[5.1]
  def change
    rename_table :movies, :movie_details
  end
end
