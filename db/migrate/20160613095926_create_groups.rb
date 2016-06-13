class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.string :name
      t.string :member
      t.integer :popularity
      t.text :description

      t.timestamps null: false
    end
  end
end
