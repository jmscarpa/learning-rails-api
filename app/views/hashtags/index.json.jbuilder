json.array! @hashtags do |hashtag|
  json.id hashtag.id
  json.name hashtag.name
  json.count hashtag.count
end