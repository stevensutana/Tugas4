class AddStatus < ActiveRecord::Migration
  def change
   add_column :gambars, :status, :string
  end
end
