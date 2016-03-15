require 'rails_helper'

describe 'the add a chapter process' do
  it 'adds a new chapter' do
    visit chapters_path
    click_link 'New Chapter'
    fill_in 'Name', with: 'Test Chapter'
    click_on 'Create Chapter'
    expect(page).to have_content 'Test Chapter'
  end
end
