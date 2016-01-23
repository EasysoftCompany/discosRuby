require "test_helper"

describe Disco do
  let(:disco) { Disco.new }

  it "must be valid" do
    value(disco).must_be :valid?
  end
end
