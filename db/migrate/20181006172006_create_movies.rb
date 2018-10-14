class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.string :name
      t.string :picture
      t.string :info
      t.date :date
      t.integer :date
      t.integer :check

      t.timestamps
    end
  end
end
