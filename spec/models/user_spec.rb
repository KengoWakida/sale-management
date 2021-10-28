require 'rails_helper'

RSpec.describe User, type: :model do
  decsribe 'ユーザー新規登録' do
    it 'nameとemail、password、passwordconfirmationが存在すれば登録できる' do

    end
    it 'nameが空では登録できない' do

    end
    it 'emailが空では登録できない' do
  
    end
    it 'passwordが空では登録できない' do

    end
    it 'password confirmationが空では登録できない' do

    end
    it 'passwordとpassword_confirmationが等しく無い場合は登録できない' do

    end
    it 'passwordが5文字以下の場合登録できない' do

    end
    it '重複したemailが存在する場合登録できない' do

    end
  end
end
