require 'rails_helper'

describe 'the add a lesson process' do
  it 'adds a new lesson' do
    visit lessons_path
    click_link 'New Lesson'
    fill_in 'Name', with: 'Test Lesson'
    click_on 'Create Lesson'
    expect(page).to have_content 'Test Lesson'
  end

  it 'gives error when no name is entered' do
    visit new_lesson_path
    click_on 'Create Lesson'
    expect(page).to have_content 'error'
  end

  it 'assigns a lesson to a section' do
    Section.create(name: 'Test Section')
    visit new_lesson_path
    fill_in 'Name', with: 'Test Lesson'
    select 'Test Section'
    click_on 'Create Lesson'
    expect(page).to have_content 'Test Section'
  end
end
