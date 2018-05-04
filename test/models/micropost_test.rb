require 'test_helper'

class MicropostTest < ActiveSupport::TestCase
   def setup
    @user = .new(email:"shuseimori@gmail.com") #devise側のcreateアクションを調べて後で実装
    
    @micropost = Micropost.new(content: "Lorem ipsum", user_id: nil)
  end

  test "should be valid" do
    assert @micropost.valid?
  end

  test "user id should be present" do
    @micropost.user_id = nil
    assert_not @micropost.valid?
  end
end
