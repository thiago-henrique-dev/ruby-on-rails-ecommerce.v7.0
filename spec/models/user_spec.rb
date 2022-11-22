require 'spec_helper'


RSpec.describe 'User', type: :model do
  context "Espero validar os campos obrigatórios" do
    it "Validar o campo nome" do
      user = build(:user)

      expect(user.valid?).to eq(true)
  end
  it "validar o campo nome nao esta presente" do
   
    user = build(:user, name: nil)

      expect(user.valid?).to eq(false)
  end
  it "validar o campo telefone  esta presente" do
  
    user = build(:user, phone: nil)

      expect(user.valid?).to eq(true)
  end
  it "validar o campo telefone nao esta presente" do
  
    user = build(:user, phone: nil)

      expect(user.valid?).to eq(false)
  end
    it "validar o campo email  esta presente" do
  
    user = build(:user)

      expect(user.valid?).to eq(true)
  end
  it "validar o campo email nao esta presente" do
  
    user = build(:user, email: nil)

      expect(user.valid?).to eq(false)
  end
  it "validar o campo senha esta presente" do
  
    user = build(:user)

      expect(user.valid?).to eq(true)
  end
  it "validar o campo senha nao esta presente" do
  
    user = build(:user, password: nil)

      expect(user.valid?).to eq(false)
  end

  context "Valida mensagem de erros para emails unicos" do

    it 'Validar emails unicos' do
      user1 = create(:user)
      user2 = build(:user, email: user1.email)

      user2.save
      
      expect(user2.valid?).to eq(false)
      expect(user2.errors.size).to eq(true)
    end

  end
end
end