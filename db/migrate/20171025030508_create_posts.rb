class CreatePosts < ActiveRecord::Migration[5.1]
  def
    up create_table :posts do |t|
      t.string :date
      t.string :body
      t.string :title
      t.string :video
    end
  end

  def
    down drop_table :posts
  end
end
