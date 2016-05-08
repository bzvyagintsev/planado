class CreateSubscribers < ActiveRecord::Migration
  def change
    create_table :subscribers do |t|

		t.integer :library_id
    	t.integer :ticket
    	t.string :surname, limit: 100
    	t.string :name, limit: 100
    	t.string :patronymic, limit: 100
    	t.string :address, limit: 1000
    	t.string :tel, limit: 20
    	
      t.timestamps null: false
    end
  end
end
