require 'bookmark'

describe Bookmark do
  it 'returns a list of bookmarks' do

    bookmark = Bookmark.create(url: "http://www.makersacademy.com", title: "Makers Academy")
    Bookmark.create(url: "http://www.destroyallsoftware.com", title: "Destroy All Software")
    Bookmark.create(url: "http://www.google.com", title: "Google")
 
    bookmarks = Bookmark.all
 
    expect(bookmarks.length).to eq 3
    expect(bookmarks.first).to be_a Bookmark
    expect(bookmarks.first.id).to eq bookmark.id
    expect(bookmarks.first.title).to eq 'Makers Academy'
    expect(bookmarks.first.url).to eq 'http://www.makersacademy.com'
  end

  it 'creates a bookmark' do
    bookmark = Bookmark.create(url: "https://www.bbc.co.uk", title: "BBCsport")
    expect(bookmark.url).to eq "https://www.bbc.co.uk"
    expect(bookmark.title).to eq "BBCsport"
  end

  it 'does not create a new bookmark if the URL is not valid' do
    Bookmark.create(url: 'not a real bookmark', title: 'not a real bookmark')
    expect(Bookmark.all).to be_empty
  end

  it 'delete a bookmark' do
    bookmark = Bookmark.create(url: "https://www.bbc.co.uk", title: "BBCsport")
    Bookmark.delete(id: bookmark.id)
    expect(Bookmark.all).to_not include(bookmark)
    expect(Bookmark.all.length).to eq 0
  end

  it 'finds a bookmark by id' do
    bookmark = Bookmark.create(url: "https://www.bbc.co.uk", title: "BBCsport")
    found_bookmark = Bookmark.find(id: bookmark.id)
    expect(bookmark.title).to eq(found_bookmark.title)
    expect(bookmark.url).to eq(found_bookmark.url)
  end

  it 'updates the bookmark' do
    bookmark = Bookmark.create(title: 'CNN', url: 'https://www.cnn.com')
    updated_bookmark = Bookmark.update(id: bookmark.id, url: 'https://www.bbc.co.uk', title: 'BBC')

    expect(updated_bookmark).to be_a Bookmark
    expect(updated_bookmark.id).to eq bookmark.id
    expect(updated_bookmark.title).to eq 'BBC'
    expect(updated_bookmark.url).to eq 'https://www.bbc.co.uk'
  end
end
