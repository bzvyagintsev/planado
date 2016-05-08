class CreateWorkers < ActiveRecord::Migration
  def change
    create_table :workers do |t|

    	t.integer :library_id
    	t.string :surname, limit: 100
    	t.string :name, limit: 100
    	t.string :patronymic, limit: 100
    	t.date :birthday
    	t.date :joined_date
    	t.string :position, limit: 256
    	t.string :education, limit: 100

      t.timestamps null: false
    end
  end
end
