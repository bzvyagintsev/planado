class CreateIssuances < ActiveRecord::Migration
  def change
    create_table :issuances do |t|

    	t.integer :book_id
    	t.integer :subscriber_id
    	t.date :issuance_date
    	t.date :return_date

      t.timestamps null: false
    end
  end
end
