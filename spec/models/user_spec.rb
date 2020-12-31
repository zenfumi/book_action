require 'rails_helper'

RSpec.describe User, type: :model do
  it "ユーザの名前が取得できること" do
    expect(user.disp_name).to eq "satouさん"
  end
end
