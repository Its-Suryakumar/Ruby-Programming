class Room
  def initialize(room_number)
    @room_number = room_number
    @reservations = []
  end
  def check_availability(start_date, end_date)
    @reservations.none? do |reservation|
      (start_date..end_date).overlap?(reservation[:start_date]..reservation[:end_date])
    end
  end
  def book_room(start_date, end_date)
    if check_availability(start_date, end_date)
      @reservations << { start_date: start_date, end_date: end_date }
      "Room #{@room_number} booked from #{start_date} to #{end_date}."
    else
      "Room #{@room_number} is not available during this period."
    end
  end
  def cancel_reservation(start_date, end_date)
    reservation = @reservations.find do |r|
      r[:start_date] == start_date && r[:end_date] == end_date
    end
    if reservation
      @reservations.delete(reservation)
      "Reservation from #{start_date} to #{end_date} canceled."
    else
      "No reservation found for the specified dates."
    end
  end
  def display_details
    "Room #{@room_number}, Reservations: #{@reservations}"
  end
 end
# Example usage:
room = Room.new(101)
puts room.book_room('2024-09-01', '2024-09-05')
puts room.check_availability('2024-09-01', '2024-09-02')
puts room.display_details 