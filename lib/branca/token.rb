# frozen_string_literal: true

require "b3bm"
require "core/global"
require "openssl"
require "securerandom"

module Branca
  class Token
    include Is::Global

    def initialize(cipher: "chacha20", version: 0xBA, encoder: B3bm.method(:encode), decoder: B3bm.method(:decode))
      @cipher = cipher
      @version = version
      @encoder = encoder
      @decoder = decoder
    end

    def encode(payload, key:, timestamp: Time.now)
      nonce = SecureRandom.random_bytes(24)
      header = [@version, timestamp.to_i].pack("C N") + nonce

      cipher = OpenSSL::Cipher.new(@cipher)
      cipher.encrypt
      cipher.iv = nonce
      cipher.key = key

      encrypted = cipher.update(payload) + cipher.final
      encoder.call(encrypted)
    end

    def decode(payload, key:, ttl: nil)
    end
  end
end
