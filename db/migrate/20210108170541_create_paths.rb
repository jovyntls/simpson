class CreatePaths < ActiveRecord::Migration[6.0]
  def change
    create_table :paths do |t|
      t.string :mod1
      t.string :mod2
      t.integer :length
      t.string :route

      t.timestamps
    end
  end
end
