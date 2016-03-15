class Lesson < ActiveRecord::Base
  belongs_to :section
  validates :name, presence: true

  def next
    Lesson.where('id > ?', id).first
  end
end
