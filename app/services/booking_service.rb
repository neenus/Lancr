class BookingService
  attr_reader :customer, :service

  def initialize(customer, service)
    @customer = customer
    @service = service
    # @start_time = start_time
    # @end_time = end_time
  end

  # In controller:
  # BookingService.book(customer, service)
  def self.book(customer, service)
    BookingService.new(customer, service).book
  end

  def book
    # Use instance variables here
    # service.customers << customer

    Booking.new({
      customer: customer,
      service: service
    })
    # book.save
  end

end