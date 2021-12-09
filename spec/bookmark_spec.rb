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

  it 'creates' do
    bookmark = Bookmark.create(url: "www.bbc.co.uk", title: "BBCsport")
    expect(bookmark.url).to eq "www.bbc.co.uk"
    expect(bookmark.title).to eq "BBCsport"
  end
end
