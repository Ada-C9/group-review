require 'date'

class Reservation
  def initialize(guest:, start_date:, end_date:)
    puts guest
    puts start_date
    puts end_date
  end
end

def new_reservation(data)
  reservation = Reservation.new(data)
end

reservation_data = {
  guest: "Lisa",
  start_date: Date.today,
  end_date: Date.today + 4,
}
new_reservation(reservation_data)
