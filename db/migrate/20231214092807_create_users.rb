class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :name
      t.text :bio
      t.string :photo_url
      t.integer :posts_counter, default: 0

      t.timestamps
    end
  end
end
