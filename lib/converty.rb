# frozen_string_literal: true

require_relative "converty/version"

module Converty
  KILOMETERS_PER_MILE = 1.609344
  class Error < StandardError; end

  def self.convert(value, from:, to:)
    if from == :mi && to == :km
      value * KILOMETERS_PER_MILE
    elsif from == :km && to == :mi
      value / KILOMETERS_PER_MILE
    else
      raise "Can't Convert error"
    end
  end
end
