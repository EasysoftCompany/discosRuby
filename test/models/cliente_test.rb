require "test_helper"

describe Cliente do
  let(:cliente) { Cliente.new }

  it "must be valid" do
    value(cliente).must_be :valid?
  end
end
