class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string     :name
      t.references :user, foreign_key: true
      t.text       :description
      t.integer    :price
      t.integer    :category_id
      t.integer    :state_id
      t.integer    :delivery_fee_id
      t.integer    :area_id
      t.integer    :shipping_id

      t.timestamps
    end
  end
end
