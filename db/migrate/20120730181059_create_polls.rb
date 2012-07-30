class CreatePolls < ActiveRecord::Migration
  def change
    create_table :polls do |t|
      t.string :name
      t.string :slug
      t.string :admin_slug
      t.timestamps
    end
    
    add_index :polls, :slug, unique: true
    add_index :polls, :admin_slug, unique: true
  end
end
