require 'bookmark'

describe Bookmark do
  it "returns the bookmarks" do
    bookmark = Bookmark.all
    expect(bookmark).to be_an_instance_of Array
  end
end