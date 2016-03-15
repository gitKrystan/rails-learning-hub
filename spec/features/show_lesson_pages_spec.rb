require 'rails_helper'

describe 'the find a lesson process' do
  before do
    chapter = Chapter.create(name: 'Test Chapter')
    section = Section.create(name: 'Test Section', chapter: chapter)
    Lesson.create(name: 'First Test Lesson',
                  section: section,
                  number: 1,
                  content: 'Lesson 1 content')
    Lesson.create(name: 'Second Test Lesson',
                  section: section,
                  number: 2,
                  content: 'Lesson 2 content')
    visit chapters_path
  end

  it 'shows a lesson for a particular section of a particular chapter' do
    click_link 'Test Chapter'
    click_on 'Test Section'
    click_on 'First Test Lesson'
    expect(page).to have_content 'Lesson 1 content'
  end
end
