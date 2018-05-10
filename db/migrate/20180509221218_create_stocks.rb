class CreateStocks < ActiveRecord::Migration[5.2]
  def change
    create_table :stocks do |t|
      t.string :supplier_name
      t.string :supplier_address
      t.string :poc_name
      t.string :poc_email
      t.string :poc_phone
      t.string :inventory_category
      t.string :inventory_name
      t.string :inventory_amount
      t.references :owner, foreign_key: true

      t.timestamps
    end
  end
end
