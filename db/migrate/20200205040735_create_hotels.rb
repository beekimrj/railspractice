class CreateHotels < ActiveRecord::Migration[6.0]
  def change
    create_table :hotels do |t|
      t.string :name
      t.string :location
      t.decimal :price
      t.date :check_in_date
      t.date :check_out_date

      t.timestamps
    end
  end
end
