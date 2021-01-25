feature 'viewing bookmarks' do

  scenario 'User can get to the page /bookmarks' do
    visit('/bookmarks')
    expect(page.status_code).to eq 200
  end

  scenario 'Can see a list of bookmarks' do
    visit('/bookmarks')
    
    expect(page).to have_content("https://www.youtube.com/")
    expect(page).to have_content("https://twitter.com/")
    expect(page).to have_content("https://www.instagram.com/")
    expect(page).to have_content("https://onlyfans.com/")
  end

end