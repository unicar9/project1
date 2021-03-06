# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string
#  email           :text
#  password_digest :text
#  image           :text
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true, length: {minimum: 5}
  validates :name, presence: true
  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy
end
