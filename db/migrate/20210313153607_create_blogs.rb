class CreateBlogs < ActiveRecord::Migration[5.2]
  def change
    create_table :blogs do |t|
      t.string :title
      t.text :body
      t.string :category
      t.string :user_id
      t.string :image_id

      t.timestamps
    end
  end
end
