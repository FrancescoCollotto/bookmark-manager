feature "delete a bookmark" do
  scenario "a user can delete a bookmark" do
    Bookmark.create(url: 'www.delete.me' , title: 'test bookmark')
    visit '/bookmarks'
    expect(page).to have_link('test bookmark', href: 'www.delete.me')

    first('.bookmark').click_button 'Delete'

    expect(current_path).to eq '/bookmarks'
    expect(page).not_to have_link('test bookmark', href: 'www.delete.me')
  end
end