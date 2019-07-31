class Book < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |b|
      t.string :title
      t.string :author
      t.string :genre
  end
end
