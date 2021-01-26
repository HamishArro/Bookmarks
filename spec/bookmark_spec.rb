require 'bookmark'

describe Bookmark do

  describe '#.all' do
    it 'prints all saved bookmarks' do
      connection = PG.connect(dbname: 'bookmark_manager_test')
      connection.exec("INSERT INTO bookmarks (url) VALUES('https://www.youtube.com/')")
      connection.exec("INSERT INTO bookmarks (url) VALUES('https://twitter.com/')")
      connection.exec("INSERT INTO bookmarks (url) VALUES('https://www.instagram.com/')")
      connection.exec("INSERT INTO bookmarks (url) VALUES('https://onlyfans.com/')")
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
