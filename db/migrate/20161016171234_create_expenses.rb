class CreateExpenses < ActiveRecord::Migration[5.0]
  def change
    create_table :expenses do |t|
      t.string :store
      t.text :description
      t.date :date
      t.float :value

      t.timestamps
	  
    end
  end
end
