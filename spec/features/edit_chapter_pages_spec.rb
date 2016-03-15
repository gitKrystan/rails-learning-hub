require 'rails_helper'

describe 'the edit a chapter process' do
  it 'edits a chapter' do
    chapter = Chapter.create(name: 'Test Chapter')
    visit chapter_path(chapter)
    click_on 'Edit'
    fill_in 'Name', with: 'New Chapter Name'
    click_on 'Update Chapter'
    expect(page).to have_content 'New Chapter Name'
  end
end
