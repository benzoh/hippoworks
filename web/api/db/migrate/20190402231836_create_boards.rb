class CreateBoards < ActiveRecord::Migration[5.2]
  def change
    create_table :boards do |t|
      t.integer :user_id
      t.integer :group_id
      t.integer :category_id
      t.text :description
      t.string :name
      t.timestamps
    end
  end
end
