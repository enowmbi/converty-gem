# frozen_string_literal: true

RSpec.describe Converty do
  it "has a version number" do
    expect(Converty::VERSION).not_to be nil
  end

  describe ".convert" do
    it "supports from miles to kilometers" do
      expect(Converty.convert(3.1, from: :mi, to: :km).round(1)).to eq(5.0)
    end

    it "supports from kilometers to miles" do
      expect(Converty.convert(5.0, from: :km, to: :mi).round(1)).to eq(3.1)
    end

    xit "raises an error when units are not supported" do
      expect(Converty.convert(5.0, from: :lb, to: :kg)).to raise_error
    end
  end
end
