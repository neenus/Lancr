# frozen_string_literal: true

require 'rails_helper'

RSpec.describe CustomersController, type: :controller do
  before :each do
    request.env['HTTP_ACCEPT'] = 'application/json'
  end

  let(:valid_attributes) do
    {
      first_name: Faker::Name.first_name,
      last_name: Faker::Name.last_name,
      email: Faker::Internet.email,
      password: 'password',
      password_confirmation: 'password'
    }
  end

  describe 'GET #index' do
    it 'returns a success response' do
      Customer.create! valid_attributes
      get :index, params: {}
      expect(response).to be_successful
    end
  end

  describe 'GET #show' do
    it 'returns a success response' do
      customer = Customer.create! valid_attributes
      get :show, params: { id: customer.to_param }
      expect(response).to be_successful
    end
  end

  describe 'POST #create' do
    context 'with valid params' do
      it 'creates a new Customer' do
        expect do
          post :create, params: { customer: valid_attributes }
        end.to change(Customer, :count).by(1)
      end

      it 'renders a JSON response with the new customer' do
        post :create, params: { customer: valid_attributes }
        expect(response.content_type).to eq('application/json')
        expect(response).to have_http_status(:created)
        expect(response.location).to eq(customer_url(Customer.last))
      end
    end

    context 'with invalid params' do
      it 'renders a JSON response with errors for the new customer' do
        post :create, params: { customer: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
        expect(response.content_type).to eq('application/json')
      end
    end
  end

  describe 'PUT #update' do
    context 'with valid params' do
      let(:new_attributes) do
        skip('Add a hash of attributes valid for your model')
      end

      it 'updates the requested customer' do
        customer = Customer.create! valid_attributes
        put :update, params: { id: customer.to_param, customer: new_attributes }
        customer.reload
        skip('Add assertions for updated state')
      end

      it 'renders a JSON response with the customer' do
        customer = Customer.create! valid_attributes

        put :update, params: { id: customer.to_param, customer: valid_attributes }
        expect(response).to have_http_status(:ok)
        expect(response.content_type).to eq('application/json')
      end
    end
  end

  describe 'DELETE #destroy' do
    it 'destroys the requested customer' do
      customer = Customer.create! valid_attributes
      expect do
        delete :destroy, params: { id: customer.to_param }
      end.to change(Customer, :count).by(-1)
    end
  end
end
