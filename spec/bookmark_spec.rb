require 'bookmark'

describe Bookmark do

  describe '#.all' do
    it 'prints all saved bookmarks' do
      bookmarks = Bookmark.all

      expect(bookmarks).to include(
        "https://www.youtube.com/",
        "https://twitter.com/",
        "https://www.instagram.com/",
        "https://onlyfans.com/"
        )
    end
  end
end