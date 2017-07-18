class Lesson < ApplicationRecord
  belongs_to :section
  mount_uploader :video, VideoUploader

  include RankedModel
  ranks :row_order, with_same: :section_id

  validates :title, presence: true
  validates :subtitle, presence: true
end
