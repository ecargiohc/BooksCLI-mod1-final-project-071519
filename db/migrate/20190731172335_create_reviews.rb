class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |r|
      r.integer :user_id
      r.integer :book_id
      r.string :content
    end
  end
end
