require 'rails_helper'

RSpec.describe Post, type: :model do
  context "contentが入力されている場合" do
    let!(:post) do
      Post.new(content:"Rspecにトライしてみよう!")
    end
    it 'contentを保存できる' do
      expect(post).to be_valid
    end
  end
end

RSpec.describe Post, type: :model do
  it "contentが空の場合(valid)" do
    post = Post.new(content: nil)
    post.valid?
    expect(post.errors.added?(:content, :blank)).to be_truthy
  end
end

