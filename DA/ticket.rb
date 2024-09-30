class Movie
  TICKET_PRICES = { 'standard' => 10, 'premium' => 15, 'vip' => 25 }
  def initialize(title, total_seats)
    @title = title
    @total_seats = total_seats
    @available_seats = total_seats
    @tickets_sold = { 'standard' => 0, 'premium' => 0, 'vip' => 0 }
  end
  def display_details
    "Movie: #{@title}, Available Seats: #{@available_seats}, Tickets Sold: #{@tickets_sold}"
  end
  def check_ticket_availability(ticket_type)
    raise 'Invalid ticket type' unless TICKET_PRICES.key?(ticket_type)
    @available_seats > 0
  end
  def book_tickets(ticket_type, number)
    raise 'Invalid ticket type' unless TICKET_PRICES.key?(ticket_type)
    if check_ticket_availability(ticket_type) && number <= @available_seats
      @available_seats -= number
      @tickets_sold[ticket_type] += number
      "Booked #{number} #{ticket_type} tickets."
    else
      "Not enough seats available."
    end
  end
  def calculate_total_price(ticket_type, number)
    raise 'Invalid ticket type' unless TICKET_PRICES.key?(ticket_type)
    TICKET_PRICES[ticket_type] * number
  end
 end
 # Example usage:
 movie = Movie.new('Inception', 100)
 puts movie.display_details
 puts movie.book_tickets('standard', 2)
 puts movie.calculate_total_price('standard', 2)