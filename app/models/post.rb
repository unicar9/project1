# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  image      :text
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Post < ApplicationRecord
end