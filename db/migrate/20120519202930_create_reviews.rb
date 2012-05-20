class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :body
      t.integer :rating
      t.string :title
      t.integer :item_id
      t.integer :user_id

      t.timestamps
    end
  end
end
