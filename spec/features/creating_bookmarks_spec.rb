feature 'adding a new bookmark' do
    scenario 'Able to add a new bookmark' do
      visit('/bookmarks/new')
      fill_in 'url', with: "https://www.bbc.co.uk/sport"
      fill_in 'title', with: "BBC"
      click_button "Submit"
      expect(page).to have_link("BBC", href:"https://www.bbc.co.uk/sport")
    end
end