require 'spec_helper'

describe ArkEcosystem::Crypto::Serializers::IPFS do
  describe '#serialize' do
    skip it 'should be ok' do
      transaction = JSON.parse!(File.read('spec/fixtures/transactions/ipfs.json'), object_class: OpenStruct)

      ArkEcosystem::Crypto::Configuration::Network.set(ArkEcosystem::Crypto::Networks::Devnet)

      actual = ArkEcosystem::Crypto::Serializer.new(transaction).serialize

      expect(actual).to eq(transaction[:serialized])
    end
  end
end