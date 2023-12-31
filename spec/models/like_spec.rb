require_relative '../rails_helper'

RSpec.describe Like, type: :model do
  user = User.create(name: 'Ismail', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Programmer',
                     posts_counter: 0)
  post = Post.create(title: 'My journey', text: 'It all started when ...', comments_counter: 0, likes_counter: 0,
                     author: user)

  subject { Like.new(author: user, post:) }

  before { subject.save }

  it 'likes counter should be 1' do
    expect(post.likes_counter).to eq 1
  end

  it 'should not be valid without an author' do
    subject.author = nil
    expect(subject).to_not be_valid
  end

  it 'should not be valid without a post' do
    subject.post = nil
    expect(subject).to_not be_valid
  end
end
