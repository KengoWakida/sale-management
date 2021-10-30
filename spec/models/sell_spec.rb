require 'rails_helper'

RSpec.describe Sell, type: :model do
  before do
    @sell = FactoryBot.build(:sell)
  end

  describe '販売履歴の登録' do
    context '販売処理が正しく行われる場合' do
      it '品名、数量、金額が正しく入力されている場合、登録できる' do
        expect(@sell).to be_valid
      end
    end
    context '販売処理が正しく行われない場合' do
      it '品名が空の場合、登録できない' do
        @sell.item = ''
        @sell.valid?
        expect(@sell.errors.full_messages).to include("Item can't be blank")
      end
      it '数量が空の場合、登録できない' do
        @sell.quantity = ''
        @sell.valid?
        expect(@sell.errors.full_messages).to include("Quantity can't be blank")
      end
      it '数量が数値ではない場合、登録できない' do
        @sell.quantity = 'ABC'
        @sell.valid?
        expect(@sell.errors.full_messages).to include("Quantity is not a number")
      end
      it '数量が0以下の場合、登録できない' do
        @sell.quantity = '0'
        @sell.valid?
        expect(@sell.errors.full_messages).to include("Quantity must be greater than or equal to 1")
      end
      it '金額が空の場合、登録できない' do
        @sell.price = ''
        @sell.valid?
        expect(@sell.errors.full_messages).to include("Price can't be blank")
      end
      it '金額が数値ではない場合、登録できない' do
        @sell.price = 'ABC'
        @sell.valid?
        expect(@sell.errors.full_messages).to include("Price is not a number")
      end
      it '金額が0以下の場合、登録できない' do
        @sell.price = '0'
        @sell.valid?
        expect(@sell.errors.full_messages).to include("Price must be greater than or equal to 1")
      end
      it 'userが紐づいていなければ出品できない' do
        @sell.user = nil
        @sell.valid?
        expect(@sell.errors.full_messages).to include("User must exist")
      end
    end
  end
end
