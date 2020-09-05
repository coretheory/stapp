require 'test_helper'

class PostTest < ActiveSupport::TestCase
  test "post attributes, except for url, body, and header_image, must not be empty" do |variable|
  	post = Post.new

  	assert post.invalid?
  	assert post.errors[:title].any?
  	assert post.errors[:user_id].any?
  end
end
