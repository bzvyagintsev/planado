class CreateLibraries < ActiveRecord::Migration
  def change
    create_table :libraries do |t|

    	t.string :number, limit: 100
    	t.string :name, limit: 1000
    	t.string :address, limit: 500

      t.timestamps null: false
    end
  end
end
