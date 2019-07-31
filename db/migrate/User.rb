class User < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |u|
    t.string :name
    t.string :favorites
  end
end
