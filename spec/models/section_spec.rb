require 'rails_helper'

RSpec.describe Section, type: :model do
  it { should validate_presence_of :name }
  it { should belong_to :chapter }
  it { should have_many :lessons }
end
