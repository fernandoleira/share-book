class CreateBooks < ActiveRecord::Migration[5.1]

  def up
    create_table :books do |t|
      t.string :title
      t.string :body
      t.attachment :image

      t.timestamps
    end
  end
  def down
    drop_table :books
  end
  
end