class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body
      t.boolean :published

      t.timestamps
    end

    if Post.count == 0
      Post.create! :title => "Wurst", :body => "foobar", :published => true
      Post.create! :title => "Quick", :body => "Quack", :published => false
    end
  end
end
