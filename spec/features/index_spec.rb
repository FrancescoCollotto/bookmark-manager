feature 'Index page' do
  scenario 'View index page' do
    visit('/')
    expect(page).to have_content 'Bookmark Manager'
  end 
end