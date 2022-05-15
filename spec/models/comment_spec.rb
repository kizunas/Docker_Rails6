require 'rails_helper'

RSpec.describe Comment, type: :model do
   # postに値を入れ、コメントする(valid)。
  it "commentする(valid)" do
         post = Post.create(content:"テスト")
         comment = post.comments.new(content: nil)
         comment.valid?
         expect(comment.errors.added?(:content, :blank)).to be_truthy
  end
end

RSpec.describe Comment, type: :model do
    # postに値を入れ、コメントする。
   it "commentする" do
          post = Post.create(content:"テスト")
          comment = post.comments.new(content: "返信")
          expect(comment).to be_valid
   end
 end