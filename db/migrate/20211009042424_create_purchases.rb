class CreatePurchases < ActiveRecord::Migration[6.0]
  def change
    create_table :purchases do |t|
      t.string      :order_no,          null: false
      t.string      :item,              null: false
      t.integer     :quantity,          null: false
      t.integer     :price,             null: false
      t.references  :user,              null: false, foreign_key: true
      t.timestamps
    end
  end
end
