require 'rails_helper'

RSpec.describe Booking, type: :model do
  describe 'associations' do
    specify { expect(subject).to belong_to(:customer) }
  end
end
