class CreateTables < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.column :name, :string
      t.column :cost, :decimal, :precision => 15, :scale => 2
      t.column :country, :string

      t.timestamps
    end

    create_table :reviews do |t|
      t.column :author, :string
      t.column :content, :string
      t.column :rating, :integer
      t.column :product_id, :integer

      t.timestamps
    end
  end
end
