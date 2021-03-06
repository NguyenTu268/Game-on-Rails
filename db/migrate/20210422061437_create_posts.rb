class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :description
      t.text :image
      t.text :body
      t.integer :user_id
      t.integer :category_id

      t.timestamps
    end
  end
end
