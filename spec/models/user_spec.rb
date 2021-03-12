require 'rails_helper'

RSpec.describe User, type: :model do

  describe "バリデーション" do
    subject {user.valid?}
    context "データが条件を満たすとき" do
      let(:user) { build(:user) }
      it "保存できる" do
        expect(subject).to eq true
      end
    end
    context "emailが空のとき" do
      let(:user) { build(:user, email: "") }
      it "エラーが発生する" do
        expect(subject).to eq false
        expect(user.errors.messages[:email]).to include "を入力してください"
      end
    end
    context "パスワードが空のとき" do
      let(:user) { build(:user, password: "") }
      it "エラーが発生する" do
        expect(subject).to eq false
        expect(user.errors.messages[:password]).to include "を入力してください"
      end
    end
    context "usernameが空のとき" do
      let(:user) {build(:user, username: "")}
      it "エラーが発生する" do
        expect(subject).to eq false
        expect(user.errors.messages[:username]).to include "を入力してください"
      end
    end
    context "username が20文字以上である時" do
      let(:user)  { build(:user,username: "a" * 21) }
      it "エラーが発生する" do
        expect(subject).to eq false
        expect(user.errors.messages[:username]).to include "は20文字以内で入力してください"
      end
    end
    context "emailがすでに存在する時は無効である" do
      before { create(:user, email: "test@email.com") }
      let (:user) { build(:user, email: "test@email.com")}
      it "エラーが発生する" do
        expect(subject).to eq false
        expect(user.errors.messages[:email]).to include "はすでに存在します"
      end
    end

    context "email が256文字以上のとき" do
      let(:user) { build(:user, email: "a" * 256) }
      it "エラーが発生する" do
        expect(subject).to eq false
        expect(user.errors.messages[:email]).to include "は不正な値です"
      end
    end

    context "profileが空の時" do
      let(:user)  { build(:user,image: "") }
      it "保存できる" do
      expect(subject).to eq true
    end
    end
  end
end
