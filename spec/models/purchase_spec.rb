require 'rails_helper'

RSpec.describe Purchase, type: :model do
  before do
    @purchase = FactoryBot.build(:purchase)
  end
  
  describe '購入履歴の登録' do
    context '購入処理が正しく行える場合' do
      it '購入番号、品名、数量、金額が正しく入力している' do
        expect(@purchase).to be_valid
      end
    end
    context '購入処理が正しく行えない場合' do
      it '購入番号が空の場合、購入処理が行えない' do
        @purchase.order_no = ''
        @purchase.valid?
        expect(@purchase.errors.full_messages).to include("Order no can't be blank")
      end
      it '購入番号に数字以外の文字が含まれる場合、購入処理が行えない' do
        @purchase.order_no = 'あいうえお'
        @purchase.valid?
        expect(@purchase.errors.full_messages).to include ("Order no is not a number")
      end
      it '品名が空の場合、購入処理が行えない' do
        @purchase.item = ''
        @purchase.valid?
        expect(@purchase.errors.full_messages).to include ("Item can't be blank")
      end
      it '数量が空の場合、購入処理が行えない' do
        @purchase.quantity = ''
        @purchase.valid?
        expect(@purchase.errors.full_messages).to include ("Quantity can't be blank")
      end
      it '数量が数値以外の場合、購入処理が行えない' do
        @purchase.quantity = 'ABC'
        @purchase.valid?
        expect(@purchase.errors.full_messages).to include ("Quantity is not a number")
      end
      it '数量が0以下の数値の場合、購入処理が行えない' do
        @purchase.quantity = 0
        @purchase.valid?
        expect(@purchase.errors.full_messages).to include ("Quantity must be greater than or equal to 1")
      end
      it '金額が空の場合、購入処理が行えない' do
        @purchase.price = ''
        @purchase.valid?
        expect(@purchase.errors.full_messages).to include ("Price can't be blank")
      end
      it '金額が数値以外の場合、購入処理が行えない' do
        @purchase.price = 'ABC'
        @purchase.valid?
        expect(@purchase.errors.full_messages).to include ("Price is not a number")
      end
      it '金額が0以下の数値の場合、購入処理が行えない' do
        @purchase.price = 0
        @purchase.valid?
        expect(@purchase.errors.full_messages).to include ("Price must be greater than or equal to 1")
      end
      it 'ユーザーが紐づいていないと購入処理が行えない' do
        @purchase.user = nil
        @purchase.valid?
        expect(@purchase.errors.full_messages).to include ("User must exist")
      end
    end
  end
end
