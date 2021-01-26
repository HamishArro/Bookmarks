require 'sinatra'
require 'sinatra/reloader'
require './lib/bookmark'

class BookmarkManager < Sinatra::Base

  configure :development do
    register Sinatra::Reloader
  end

  #For testing purposes only, was testing infrastructure
  get '/' do
    'Hello world!'
    redirect '/bookmarks'
  end

  get '/bookmarks' do
    @bookmarks = Bookmark.all
    erb(:bookmarks)
  end

  run! if app_file == $0

end
