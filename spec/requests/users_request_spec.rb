require 'rails_helper'

RSpec.describe "Users", type: :request do

  describe "GET #show" do
  before do
    @user = create(:user)
  end

    context "ユーザーが存在するとき" do
    let(:user_id) { @user.id}
      it "リクエストが成功する" do
        user = create(:user)
        sign_in @user
        binding.pry
        get(user_path(:user_id))
        expect(response).to have_http_status(:ok)
      end
    end
  end
end
