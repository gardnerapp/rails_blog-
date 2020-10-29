require 'test_helper'

class PostTest < ActiveSupport::TestCase
  def setup
    @post = Post.new(title: "Hello", content: "World" )
  end

  test "post should have title" do
    @post.title = ''
    assert_not @post.valid?, "Post is missing a title validation"
  end

  test "post should have content" do
    @post.content = ''
    assert_not @post.valid?, "Post is missing content validation"
  end

  test"post should have limited title length" do
    @post.title = 'A' * 26
    assert_not @post.valid?, "Post has invalid title length"
  end
end
