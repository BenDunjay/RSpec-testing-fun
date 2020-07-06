class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name, default: "Bill"
      t.timestamps
    end
  end
end
