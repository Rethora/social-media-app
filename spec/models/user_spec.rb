require 'rails_helper'

RSpec.describe User, type: :model do
  it 'user should have a username' do
    user = User.create(
      first_name: 'Bob',
      last_name: 'Saggit',
      username: '',
      email: 'test1@xxx.xxx',
      gender: 'male',
      age: 22,
      password: '123456',
      password_confirmation: '123456'
    )
    expect(user.errors[:username]).to_not be_empty
  end
  it 'user should have a first name' do
    user = User.create(
      first_name: '',
      last_name: 'Saggit',
      username: 'thebobsaggit',
      email: 'test1@xxx.xxx',
      gender: 'male',
      age: 22,
      password: '123456',
      password_confirmation: '123456'
    )
    expect(user.errors[:first_name]).to_not be_empty
  end
  it 'user should have a last name' do
    user = User.create(
      first_name: 'Bob',
      last_name: '',
      username: 'thebobsaggit',
      email: 'test1@xxx.xxx',
      gender: 'male',
      age: 22,
      password: '123456',
      password_confirmation: '123456'
    )
    expect(user.errors[:last_name]).to_not be_empty
  end
  it 'user should have an age' do
    user = User.create(
      first_name: 'Bob',
      last_name: 'Saggit',
      username: 'thebobsaggit',
      email: 'test1@xxx.xxx',
      gender: 'male',
      password: '123456',
      password_confirmation: '123456'
    )
    expect(user.errors[:age]).to_not be_empty
  end
  it 'user should have an age greater than 0' do
    user = User.create(
      first_name: 'Bob',
      last_name: 'Saggit',
      username: 'thebobsaggit',
      email: 'test1@xxx.xxx',
      gender: 'male',
      age: 0,
      password: '123456',
      password_confirmation: '123456'
    )
    expect(user.errors[:age]).to_not be_empty
  end
  it 'user should have an age less than 121' do
    user = User.create(
      first_name: 'Bob',
      last_name: 'Saggit',
      username: 'thebobsaggit',
      email: 'test1@xxx.xxx',
      gender: 'male',
      age: 121,
      password: '123456',
      password_confirmation: '123456'
    )
    expect(user.errors[:age]).to_not be_empty
  end
  it 'user should have a gender' do
    user = User.create(
      first_name: 'Bob',
      last_name: 'Saggit',
      username: 'thebobsaggit',
      email: 'test1@xxx.xxx',
      gender: '',
      age: 121,
      password: '123456',
      password_confirmation: '123456'
    )
    expect(user.errors[:gender]).to_not be_empty
  end
end
