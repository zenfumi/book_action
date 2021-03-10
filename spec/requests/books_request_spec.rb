require 'rails_helper'

RSpec.describe "Books", type: :request do
  before do
    @user = create(:user)
  end

  describe "GET #new" do
  subject { get(new_book_path) }

  context "ログインユーザーの場合" do
    it "リクエストが成功する" do
      sign_in @user
      subject
      expect(response).to have_http_status(:ok)
    end
  end



  context "未ログインユーザーの場合" do
    it "ログインユーザーでない場合" do
      subject
      expect(response).to have_http_status(:found)
    end
  end
end


  # describe "GET #show" do
  # before do
  #   @book = create(:book)
  # end

  #   context "ユーザーが存在するとき" do
  #   let(:user_id) { @user.id}
  #     it "リクエストが成功する" do
  #       boook = create(:book)
  #       binding.pry
  #       get(user_path(:user_id))
  #       expect(response).to have_http_status(:ok)
  #     end
  #   end
  # end
end
