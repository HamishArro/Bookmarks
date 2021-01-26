# User Stories:
```
As a user
So I can see my favourite sites
I would like to be able to list bookmarks
```
```
As a time-pressed user
So that I can save a website
I would like to add the site's address and title to bookmark manager
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

## Set up

1. connect to `psql`

2. Create the database using the `psql` command `CREATE DATABASE bookmark_manager;`

3. Connect to the database using the `pqsl` command `\c bookmark_manager;`

4. Run the query we have saved in the file `01_create_bookmarks_table.sql`
