module HomeHelper

  def articles(query="India")
    require 'rss'
    require 'open-uri'
    url = "https://news.google.com/rss/search?q=#{query}"
    open(url) do |rss|
      RSS::Parser.parse(rss)
      # feed = RSS::Parser.parse(rss)
      # puts "Title: #{feed.channel.title}"
      # feed.items.each do |item|
      #   puts "Item: #{item.title}"
      # end
    end
  end
end
