describe ArkEcosystem::Crypto::Transactions::Deserializers::DelegateResignation do
  describe '#deserialize' do
    skip 'should be ok if signed with a passphrase' do
      transaction = JSON.parse!(File.read('spec/fixtures/transactions/delegate_resignation/passphrase.json'), object_class: OpenStruct)

      actual = ArkEcosystem::Crypto::Transactions::Deserializer.new(transaction['serialized']).deserialize

      expect(actual.version).to eq(1)
      expect(actual.network).to eq(30)
    end
  end
end
