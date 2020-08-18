# == Schema Information
#
# Table name: albums
#
#  id         :bigint           not null, primary key
#  band_id    :integer          not null
#  title      :string           not null
#  year       :integer          not null
#  studio     :boolean          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Album < ApplicationRecord
    validates :band_id, :title, :year, presence: true
    validates :studio, inclusion: {in: [true, false]}

    belongs_to :band,
        foreign_key: :band_id

    has_many :tracks,
        foreign_key: :album_id,
        dependent: :destroy
end
