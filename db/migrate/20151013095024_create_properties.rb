class CreateProperties < ActiveRecord::Migration
	def change
		create_table :properties do |t|
			t.belongs_to :user
      t.string  :address
      t.integer :rate
      t.string  :comment
      t.string  :start_date
      t.string  :end_date
      t.string  :booked_by
      t.timestamps  null: false
    end
	end
end
