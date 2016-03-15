require 'rails_helper'

describe 'the edit a section process' do
  before do
    section = Section.create(name: 'Test Section')
    visit section_path(section)
    click_on 'Edit'
  end

  it 'edits a section' do
    fill_in 'Name', with: 'New Section Name'
    click_on 'Update Section'
    expect(page).to have_content 'New Section Name'
  end

  it 'gives error when no name is entered' do
    fill_in 'Name', with: ''
    click_on 'Update Section'
    expect(page).to have_content 'error'
  end
end
