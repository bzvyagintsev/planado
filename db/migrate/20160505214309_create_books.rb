class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|

    	t.integer :library_id
    	t.string :name, limit: 2000
    	t.string :author, limit: 1000
    	t.string :cypher, limit: 100
    	t.string :publisher, limit: 256
    	t.integer :publishing_year
    	t.decimal :price, precision: 10, scale: 2
    	t.date :supply_date

      t.timestamps null: false
    end
  end
end
