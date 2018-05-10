class CreateOwners < ActiveRecord::Migration[5.2]
  def change
    create_table :owners do |t|
      t.string :name
      t.string :photo_url
      t.string :business_name
      t.string :business_description

      t.timestamps
    end
  end
end
