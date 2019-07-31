class Review < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |r|
      r.id :user_id
      r.id :book_id
      r.string :content
  end
end
