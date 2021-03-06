require 'rails_helper'

RSpec.describe Services::Normalizer, type: :model do
  describe '#remove_header' do
    context 'when valid data' do
      let(:body) { build(:normalizer) }

      it 'with normalized content' do
        normalized = Services::Normalizer.new(body).normalize!
        expect(normalized).not_to eq(
          "Comprador\tDescrição\tPreço Unitário\tQuantidade\tEndereço\tFornecedor"
        )
      end
    end
  end
end
