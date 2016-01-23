require "test_helper"

describe Vendedore do
  let(:vendedore) { Vendedore.new }

  it "must be valid" do
    value(vendedore).must_be :valid?
  end
end
