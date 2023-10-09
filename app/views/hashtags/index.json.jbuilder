json.array! @hashtags do |hashtag|
  json.id hashtag.id
  json.name hashtag.name
  json.count hashtag.posts_count
  json.hello t('hello', name: hashtag)
end