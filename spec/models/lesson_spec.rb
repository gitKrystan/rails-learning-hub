require 'rails_helper'

RSpec.describe Lesson, type: :model do
  it { should validate_presence_of :name }
  it { should belong_to :section }
end
