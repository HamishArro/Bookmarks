# User Stories:
```
As a user
So I can see my favourite sites
I would like to be able to list bookmarks
```

## Domain model:

Nouns  | Property or Owner of Property
------------- | -------------
bookmarks  |  Owner of URLs

Actions  | Owned by
------------- | -------------
list_bookmarks  |  Owned by bookmarks

Actions  | Property owned or changed
------------- | -------------
list_bookmarks  |  bookmarks([URLs])
