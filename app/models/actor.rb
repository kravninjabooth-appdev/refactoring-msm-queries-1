# == Schema Information
#
# Table name: actors
#
#  id         :integer          not null, primary key
#  bio        :text
#  dob        :date
#  image      :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Actor < ApplicationRecord

  def character
    key = self.character_id
    the_many = Character.where({:actor_id => key})

    return the_many
  end
end
