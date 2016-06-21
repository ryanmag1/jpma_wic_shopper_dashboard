json.array!(@daily_totals) do |daily_total|
  json.extract! daily_total, :id, :date, :new_card_regs, :daily_rx_users, :device_registrations, :device_activity, :peoplescanning, :items_scanned
  json.url daily_total_url(daily_total, format: :json)
end
