feature 'Bookmarks page' do
  scenario 'View a list of bookmarks' do
    visit('/bookmarks')
    expect(page).to have_content "Google"
    expect(page).to have_content "Twitter"
    expect(page).to have_content "StackOverflow"
  end 
end