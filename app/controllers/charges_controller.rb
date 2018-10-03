class ChargesController < ApplicationController

def new
end



def create
  # Amount in cents


  @amount = Service.find(params[:service_id]).price * 100



  customer = Stripe::Customer.create(
    :email => current_customer.email,
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
    c = current_customer
    # TODO: Get Service object - From Params
    service = Service.find(params[:service_id])
    booking = BookingService.book(c, service)

      if booking.save
        service.is_booked = true
        service.save
        redirect_to "/customers/#{current_customer.id} "


      else
        redirect_to '/services/params[service_id]'
      end




    end


    rescue Stripe::CardError => e
      flash[:error] = e.message
    redirect_to '/customers/params[:service_id]'
  end


end
