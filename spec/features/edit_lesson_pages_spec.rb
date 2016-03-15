require 'rails_helper'

describe 'the edit a lesson process' do
  before do
    lesson = Lesson.create(name: 'Test Lesson')
    visit lesson_path(lesson)
    click_on 'Edit'
  end

  it 'edits a lesson' do
    fill_in 'Name', with: 'New Lesson Name'
    click_on 'Update Lesson'
    expect(page).to have_content 'New Lesson Name'
  end

  it 'gives error when no name is entered' do
    fill_in 'Name', with: ''
    click_on 'Update Lesson'
    expect(page).to have_content 'error'
  end
end
