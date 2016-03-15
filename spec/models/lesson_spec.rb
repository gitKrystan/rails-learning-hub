require 'rails_helper'

RSpec.describe Lesson, type: :model do
  it { should validate_presence_of :name }
  it { should belong_to :section }

  context '#next' do
    it 'returns the lesson with the next-higher number /
      than the current lesson' do
      section = Section.create(name: 'Test Section')
      other_section = Section.create(name: 'Other Section')
      current_lesson = Lesson.create(name: 'lesson1',
                                     number: 1,
                                     section: section)
      other_lesson = Lesson.create(name: 'other lesson',
                     number: 2,
                     section: other_section)
      next_lesson = Lesson.create(name: 'lesson2',
                                  number: 3,
                                  section: section)
      expect(current_lesson.next).to eq next_lesson
    end
  end
end
