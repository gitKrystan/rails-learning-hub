class Lesson < ActiveRecord::Base
  belongs_to :section
  validates :name, presence: true

  def next
    Lesson.where('number > ? AND section_id = ?', number, section.id).first
  end

  def previous
    Lesson.where('number < ? AND section_id = ?', number, section.id).first
  end
end
