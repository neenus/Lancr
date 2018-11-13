require 'rails_helper'

RSpec.describe Customer, type: :model do
  describe 'associations' do
    specify { expect(subject).to have_many(:bookings) }
  end

  context 'validations' do
    specify { expect(subject).to validate_presence_of(:first_name) }
  end
end