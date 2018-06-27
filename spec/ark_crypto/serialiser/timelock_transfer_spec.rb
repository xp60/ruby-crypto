require 'spec_helper'
require 'ostruct'

require 'btcruby'
require 'ark_crypto/crypto'
require 'ark_crypto/serialisers/timelock_transfer'

describe ArkCrypto::Serialisers::TimelockTransfer do
  describe '#serialise' do
    skip it 'should be ok' do
      transaction = JSON.parse!(File.read('spec/fixtures/transactions/timelock_transfer.json'), object_class: OpenStruct)

      serialiser = ArkCrypto::Serialisers::TimelockTransfer.new(transaction)

      actual = serialiser.serialise

      expect(actual).to eq(transaction[:serialized])
    end
  end
end