class CreateDailyTotals < ActiveRecord::Migration
  def change
    create_table :daily_totals do |t|
      t.date :date
      t.integer :new_card_regs
      t.integer :daily_rx_users
      t.integer :device_registrations
      t.integer :device_activity
      t.integer :peoplescanning
      t.integer :items_scanned

      t.timestamps null: false
    end
  end
end
