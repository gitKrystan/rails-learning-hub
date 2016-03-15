require 'rails_helper'

describe 'the edit a chapter process' do
  before do
    chapter = Chapter.create(name: 'Test Chapter')
    visit chapter_path(chapter)
    click_on 'Edit'
  end

  it 'edits a chapter' do
    fill_in 'Name', with: 'New Chapter Name'
    click_on 'Update Chapter'
    expect(page).to have_content 'New Chapter Name'
  end

  it 'gives error when no name is entered' do
    fill_in 'Name', with: ''
    click_on 'Update Chapter'
    expect(page).to have_content 'error'
  end
end
