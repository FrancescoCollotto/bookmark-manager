feature "Update bookmark" do
  scenario "a user can update a bookmark entry" do
    bookmark = Bookmark.create(url: "https://www.gooogle.com", title: "Goggle")
    visit "/bookmarks"
    first('.bookmark').click_button 'Edit'
    
    expect(current_path).to eq "/bookmarks/#{bookmark.id}/edit"
    fill_in 'url', with: 'https://www.google.com'
    fill_in 'title', with: 'Google'
    click_on 'Submit'

    expect(page).not_to have_link("Goggle")
    expect(page).to have_link("Google")
  end
end
