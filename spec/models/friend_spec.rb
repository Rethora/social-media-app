require 'rails_helper'

RSpec.describe Friend, type: :model do
  it 'user should be able to have friends' do
    user = User.create(
      first_name: 'Bob',
      last_name: 'Saggit',
      username: 'thebobsaggit',
      email: 'test1@xxx.xxx',
      gender: 'male',
      age: 22,
      password: '123456',
      password_confirmation: '123456'
    )
    friend = User.create(
      first_name: 'Scooby',
      last_name: 'Doo',
      username: 'scoobydoobedoo',
      email: 'test2@xxx.xxx',
      gender: 'male',
      age: 12,
      password: '123456',
      password_confirmation: '123456'
    )
    user.friends.create(friend_id: friend.id)
    expect(user.friends.count).to eq 1
  end
  it 'should be error if friend is not a valid user' do
    user = User.create(
      first_name: 'Bob',
      last_name: 'Saggit',
      username: 'thebobsaggit',
      email: 'test1@xxx.xxx',
      gender: 'male',
      age: 22,
      password: '123456',
      password_confirmation: '123456'
    )
    friend = User.create(
      first_name: 'Scooby',
      last_name: 'Doo',
      username: 'scoobydoobedoo',
      email: 'test2@xxx.xxx',
      gender: 'male',
      age: 12,
      password: '123456',
      password_confirmation: '123456'
    )
    friend = user.friends.create(friend_id: 892392389)
    expect(friend.errors[:friend_id]).to_not be_empty
  end
end
