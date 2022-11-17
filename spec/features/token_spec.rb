# frozen_string_literal: true

require "securerandom"

require "branca"

RSpec.describe "tokens" do
  let(:key) {
    Branca.key
  }

  let(:encoded) {
    Branca::Token.encode(payload, key: key)
  }

  let(:decoded) {
    Branca::Token.decode(payload, key: key)
  }

  context "string payload" do
    let(:payload) {
      SecureRandom.alphanumeric(128)
    }

    it "encodes" do
      pp encoded
    end

    it "decodes"
  end

  context "byte string payload" do
    it "encodes"
    it "decodes"
  end
end
