class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :contents
      t.string :author
      t.boolean :approved

      t.timestamps
    end
  end
end
