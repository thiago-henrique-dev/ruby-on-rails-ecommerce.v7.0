require 'rails_helper'

RSpec.describe 'Category', type: :model do

    context "Espero validar todos os campos obrigatorios" do

    it 'Validar o campo nome está presente' do
        category = build(:category)

        expect(category.valid?).to eq(true)  

    end

    it 'Validar o campo nome está presente' do
      category = build(:category, name: nil)

      expect(category.valid?).to eq(false)  
    end

    it 'Validar o campo nome está presente' do
      category = build(:category, position: nil)

      expect(category.valid?).to eq(false)  
    end
  end
end
              