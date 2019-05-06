class User < ApplicationRecord

  has_secure_password
  has_secure_token :confirmation_token

  validates :username,
    format: {with: /\A[a-zA-Z0-9_]{3,20}\z/, message: "Ne doit contenir que des caractères alphanumériques"},
    uniqueness: {case_sensitive: false}

  validates :email,
    format: {with: /\A[^@\s]+@([^@.\s]+\.)+[^@.\s]+\z/},
    uniqueness: {case_sensitive: false}

end
