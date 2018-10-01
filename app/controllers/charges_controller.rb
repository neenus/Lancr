class ChargesController < ApplicationController

def new
end



def create
  # Amount in cents


  @amount = Service.find(params[:service_id]).price



  customer = Stripe::Customer.create(
    :email => current_user.email,
    :source  => params[:stripeToken]
  )


  charge = Stripe::Charge.create(
    :customer    => customer.id,
    :amount      => @amount,
    :description => 'Lancr Freelancer Charge',
    :currency    => 'CAD'
  )

  if charge["paid"] == true
    # TODO: Get Customer object
    customer = current_user
    # TODO: Get Service object - From Params
    service = Service.find(params[:service_id])
    booking = BookingService.book(customer, service)
    respond_to do |format|
      if booking.save
        service.is_booked = true
        service.save
        redirect_to 'customers/customer_url(@customer)'

      else
        format.html { redirect_to service_path(params[:service_id]) }
        format.json { render json: booking.errors, status: :unprocessable_entity }
      end
    end



  end


rescue Stripe::CardError => e
  flash[:error] = e.message
redirect_to 'customers/params[:service_id]'
end

end
