feature 'testing infrastructure' do

  scenario 'displays hello world' do
    visit('/')
    expect(page.status_code).to eq 200
  end

end
