class CreateRates < ActiveRecord::Migration[5.2]
  def change
    create_table :rates do |t|
      t.integer :user_id
      t.integer :movie_id
      t.integer :rate

      t.timestamps
    end
  end
end
