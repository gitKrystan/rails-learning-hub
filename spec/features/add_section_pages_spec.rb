require 'rails_helper'

describe 'the add a section process' do
  it 'adds a new section' do
    visit sections_path
    click_link 'New Section'
    fill_in 'Name', with: 'Test Section'
    click_on 'Create Section'
    expect(page).to have_content 'Test Section'
  end

  it 'gives error when no name is entered' do
    visit new_section_path
    click_on 'Create Section'
    expect(page).to have_content 'error'
  end
end
