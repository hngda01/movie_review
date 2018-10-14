class CreateMovieCharacters < ActiveRecord::Migration[5.2]
  def change
    create_table :movie_characters do |t|
      t.integer :movie_id
      t.integer :actor_id

      t.timestamps
    end
  end
end
