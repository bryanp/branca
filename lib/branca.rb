# frozen_string_literal: true

require "securerandom"

module Branca
  def self.key
    SecureRandom.random_bytes(32)
  end

  require_relative "branca/token"
  require_relative "branca/version"
end
