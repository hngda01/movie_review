class CreateReviewActions < ActiveRecord::Migration[5.2]
  def change
    create_table :review_actions do |t|
      t.integer :review_id
      t.integer :user_id
      t.integer :action

      t.timestamps
    end
  end
end
