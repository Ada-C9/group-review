require "test_helper"

describe Card do
  let(:ada) { cards(:ada) }
  let(:charles) { cards(:charles) }

  it "must be valid" do
    value(ada).must_be :valid?
  end

  it "must not be valid when job has < 5 characters" do
    5.times do |n|
      ada.job = "A" * n
      value(ada).wont_be :valid?
    end
  end

  it "must not be valid without a unique name" do
    value(charles).must_be :valid? # Sanity check

    charles.name = ada.name

    value(charles).wont_be :valid?
  end


end
