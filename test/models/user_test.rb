require "test_helper"

class UserTest < ActiveSupport::TestCase
 test "nome é obrigatório" do
   
  user = User.new(name: nil)

  user.save 

  assert user.errors[:name].any?
 end


 test "email é obrigatório e no formato válido" do 
  user = User.new(email: nil)

  user.save

  assert user_errors[:email].any?

  user = User.new(email: "inválido")
  user.save
  assert user.errors[:email].any?
 end

test "email é obrigatório e formato válido" do
  user = User.new(email: nil)
  user.save
  assert user.errors[:email].any?

  user = User.new(email: "invalido")
  user.save
  assert user.errors[:email].any?

  user = User.new(email: "valido@exemplo.com")
  user.save
  refute user.errors[:email].any?
end

    test "email é unico" do 
        user = User.create!(name: "eu", email: "eu@example.com", password: "secret", password_confirmation: "secret")

         other_user = User.create(email: "eu@example.com")

         assert other_user.errors[:email].any?
    end 
end
