# == Schema Information
#
# Table name: links
#
#  id         :bigint(8)        not null, primary key
#  title      :string
#  url        :string
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Link < ApplicationRecord
  validates :title, :url, presence: true
  belongs_to :user
  has_many :comments
end
