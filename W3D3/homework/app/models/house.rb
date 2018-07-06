# == Schema Information
#
# Table name: houses
#
#  id         :bigint(8)        not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  address    :text
#

class House < ApplicationRecord
  validates :address, presence: true

  has_many :people,
    primary_key: :id,
    foreign_key: :house_id,
    class_name: :Person
end
