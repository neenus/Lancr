class ChargesController < ApplicationController

def new
end



def create
  # Amount in cents

  # @amount = @service.id.price

 puts "******************"
 puts  'from charges_controller . rb'
 puts "** ***  *** *** ***  ****"
 puts  @service.price
 puts "******************"


  customer = Stripe::Customer.create(
    :email => current_user.email,
    :source  => params[:stripeToken]
  )

  charge = Stripe::Charge.create(
    :customer    => customer.id,
    :amount      => @amount,
    :description => 'Lancr Freelancer Charge',
    :currency    => 'cad'
  )

rescue Stripe::CardError => e
  flash[:error] = e.message
  redirect_to 'customers/@current_user'
end

end
