class CreateStocks < ActiveRecord::Migration[6.0]
  def change
    create_table :stocks do |t|
      t.string    :item,        null: false
      t.integer   :quantity,    null: false
      
      t.timestamps
    end
  end
end
