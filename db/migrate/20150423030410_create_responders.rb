class CreateResponders < ActiveRecord::Migration
  def change
    create_table :responders do |t|
      t.string :name, null: false
      t.string :type, null: false
      t.integer :capacity, null: false
      t.boolean :on_duty, default: false

      t.timestamps null: false
    end
  end
end
