require 'rails_helper'

RSpec.describe Point, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  it "is not valid without a title" do
    point = Point.new(title: nil)
    expect(point).to_not be_valid
  end
end
