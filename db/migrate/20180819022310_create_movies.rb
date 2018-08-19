class CreateMovies < ActiveRecord::Migration[5.1]
  def change
    create_table :movies do |t|
      t.string :title
      t.integer :rank
      t.string :director
      t.integer :year 

      t.timestamps
    end
  end
end
