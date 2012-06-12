class CreateScreencasts < ActiveRecord::Migration
  def up
    create_table :screencasts do |t|
      t.integer :id
      t.text :title
      t.timestamps
    end
  end
 
  def down
    drop_table :screencasts
  end
end