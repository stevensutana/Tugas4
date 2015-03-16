class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :title
      t.string :content
      t.string :­­skip­test
      t.string :­­no­test­

      t.timestamps null: false
    end
  end
end
