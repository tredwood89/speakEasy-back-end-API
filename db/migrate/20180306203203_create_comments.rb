class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.integer :like, :default => 0
      t.string :content

      t.timestamps
    end
  end
end
