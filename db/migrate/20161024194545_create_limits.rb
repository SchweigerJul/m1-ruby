class CreateLimits < ActiveRecord::Migration[5.0]
  def change
    create_table :limits do |t|
      t.date :expireDate
      t.float :limit

      t.timestamps
    end
  end
end
