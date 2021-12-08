require 'bookmark'

describe Bookmark do
  it 'returns a list of bookmarks' do
    connection = PG.connect(dbname: 'bookmark_manager_test')

    bookmark = Bookmark.create("http://www.makersacademy.com", "Makers Academy")
    Bookmark.create("http://www.destroyallsoftware.com", "Destroy All Software")
    Bookmark.create("http://www.google.com", "Google")
 
    bookmarks = Bookmark.all
 
    expect(bookmarks.length).to eq 3
    expect(bookmarks.first).to be_a Bookmark
    expect(bookmarks.first.id).to eq bookmark.id
    expect(bookmarks.first.title).to eq 'Makers Academy'
    expect(bookmarks.first.url).to eq 'http://www.makersacademy.com'
  end

  it 'creates' do
    Bookmark.create("www.bbc.co.uk")
    expect(Bookmark.all).to include "www.bbc.co.uk"
  end
end
