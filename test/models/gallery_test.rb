require 'test_helper'

class GalleryTest < ActiveSupport::TestCase
  test "gallery attributes, except description, must not be empty" do
  	gallery = Gallery.new

  	assert gallery.invalid?
  	assert gallery.errors[:gallery_image].any?
  	assert gallery.errors[:title].any?
  	assert gallery.errors[:user_id].any?
  end
end
