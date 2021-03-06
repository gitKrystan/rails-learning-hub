require 'rails_helper'

describe 'the add a chapter process' do
  it 'adds a new chapter' do
    visit chapters_path
    click_link 'New Chapter'
    fill_in 'Name', with: 'Test Chapter'
    click_on 'Create Chapter'
    expect(page).to have_content 'Test Chapter'
  end

  it 'gives error when no name is entered' do
    visit new_chapter_path
    click_on 'Create Chapter'
    expect(page).to have_content 'error'
  end
end
