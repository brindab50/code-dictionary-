# == Schema Information
#
# Table name: favorites
#
#  id          :integer          not null, primary key
#  user_id     :integer
#  language_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Favorite < ApplicationRecord
  belongs_to :language
  belongs_to :user
  
end
