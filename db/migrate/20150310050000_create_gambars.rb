	class CreateGambars < ActiveRecord::Migration
  def change
    create_table :gambars do |t|
      t.string :title
      t.string :content

      t.timestamps
    end
  end
end
