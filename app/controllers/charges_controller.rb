class ChargesController < ApplicationController

def new
end

def create
  # Amount in cents
<<<<<<< HEAD
  @amount = 500
=======
  @amount =
>>>>>>> master

  customer = Stripe::Customer.create(
    :email => params[:stripeEmail],
    :source  => params[:stripeToken]
  )

  charge = Stripe::Charge.create(
    :customer    => customer.id,
    :amount      => @amount,
    :description => 'Rails Stripe customer',
    :currency    => 'cad'
  )

rescue Stripe::CardError => e
  flash[:error] = e.message
  redirect_to new_charge_path
end

end