require 'rails_helper'

RSpec.describe Sell, type: :model do
  before do
    @sell = FactoryBot.build(:sell)
  end

  describe '販売履歴の登録' do
    context '販売処理が正しく行われる場合' do
      it '品名、数量、金額が正しく入力されている場合、登録できる' do

      end
    context '販売処理が正しく行われない場合' do
      it '品名が空の場合、登録できない' do

      end
      it '数量が空の場合、登録できない' do

      end
      it '数量が数値ではない場合、登録できない' do

      end
      it '数量が0以下の場合、登録できない' do

      do
      it '金額が空の場合、登録できない' do
      
      end
      it '金額が数値ではない場合、登録できない' do

      end
      it '金額が0以下の場合、登録できない' do

      end
    end
end
