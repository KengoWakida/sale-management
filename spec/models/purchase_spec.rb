require 'rails_helper'

RSpec.describe Purchase, type: :model do
  before do
    @purchase = FactoryBot.build(:purchase)
  end
  
  describe '購入履歴の登録' do
    context '購入処理が正しく行える場合' do
      it '購入番号、品名、数量、金額が正しく入力している' do

      end
    end
    context '購入処理が正しく行えない場合' do
      it '購入番号が空の場合、購入処理が行えない' do

      end
      it '購入番号に英数字以外の文字が含まれる場合、購入処理が行えない' do

      end
      it '品名が空の場合、購入処理が行えない' do

      end
      it '数量が空の場合、購入処理が行えない' do

      end
      it '数量が数値以外の場合、購入処理が行えない' do

      end
      it '数量が0以下の数値の場合、購入処理が行えない' do

      end
      it '金額が空の場合、購入処理が行えない' do

      end
      it '金額が数値以外の場合、購入処理が行えない' do

      end
      it '金額が0以下の数値の場合、購入処理が行えない' do

      end
    end
  end
end
