# == Schema Information
#
# Table name: notes
#
#  id         :bigint           not null, primary key
#  user_id    :integer          not null
#  track_id   :integer          not null
#  body       :text             not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Note < ApplicationRecord
    validates :body, presence: true

    belongs_to :author,
        foreign_key: :user_id,
        class_name: :User

    belongs_to :track,
        foreign_key: :track_id
end
