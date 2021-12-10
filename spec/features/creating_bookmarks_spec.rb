feature 'adding a new bookmark' do
    scenario 'Able to add a new bookmark' do
      visit('/bookmarks/new')
      fill_in 'url', with: "https://www.bbc.co.uk/sport"
      fill_in 'title', with: "BBCsport"
      click_button "Submit"
      expect(page).to have_link("BBCsport", href:"https://www.bbc.co.uk/sport")
    end

    scenario 'The bookmark must be a valid URL' do
      visit('/bookmarks/new')
      fill_in('url', with: 'not a real bookmark')
      click_button('Submit')
    
      expect(page).not_to have_content "not a real bookmark"
      expect(page).to have_content "You must submit a valid URL."
    end
end