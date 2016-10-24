class CreateExpenses < ActiveRecord::Migration[5.0]
  def change
    create_table :expenses do |t|
      t.string :store
      t.text :description
      t.date :date
      t.float :value
      t.integer :limit_id

      t.timestamps
    end

    add_index :limit_id
  end
end
