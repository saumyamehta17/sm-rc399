<<<<<<< HEAD
Railscast sm-rc399
===================
Autocomplete
```
scaffold
```
#todo
```
rack-mini-profiler gem
```
to measure performance whenever using autocomplete with large database
And also work for ajax request
It tell us how much time it take to find suggestion
```
Now to reduce to fetching data for autocompletion use cache
```
see search_suggestion.rb
But it will take time when search is new
```
So use different storage for autocompletion
```
gem 'redis'
* it will increment popularity by own (zincrement)
* its key value pair storage
* its sorted set
see http://redis.io/commands/zrevrange
It reduces query time made to find suggestions
```
Rails console
```
rails c
```
Rails server
```
rails s
```
