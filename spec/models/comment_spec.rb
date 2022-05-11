require 'rails_helper'

RSpec.describe Comment, type: :model do
   # postに値を入れ、コメントする(error_version)。
  it "commentする(error)" do
         post = Post.create(content:"テスト")
         comment = post.comments.new(content: nil)
         expect(comment).to be_valid
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