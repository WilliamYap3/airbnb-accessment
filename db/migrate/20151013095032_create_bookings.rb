class CreateBookings < ActiveRecord::Migration
	def change
	create_table :bookings do |t|
			t.belongs_to :user
      t.string  :start_date
      t.string  :end_date
      t.timestamps  null: false
    end
	end
end
