require 'date'

class Reservation
  def initialize(guest:, start_date:, end_date:)
    puts guest
    puts start_date
    puts end_date
  end
end

def new_reservation(name, start_res, end_res)
  reservation = Reservation.new(guest: name, start_date: start_res, end_date: end_res)
end

new_reservation("Lisa", Date.today, Date.today + 4)
