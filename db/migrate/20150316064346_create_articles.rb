class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.string :content
      t.string :­­skip­test
      t.string :­­no­test­

      t.timestamps null: false
    end
  end
end
