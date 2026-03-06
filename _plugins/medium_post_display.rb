begin
  require 'feedjira'
  require 'net/http'
rescue LoadError => e
  Jekyll.logger.warn "Medium posts:", "Skipping (feedjira/nokogiri not available: #{e.message})"
end

if defined?(Feedjira)
  require 'jekyll'
  module Jekyll
    class JekyllDisplayMediumPosts < Generator
      safe true
      priority :high

      def generate(site)
        jekyll_coll = Jekyll::Collection.new(site, 'medium_posts')
        site.collections['medium_posts'] = jekyll_coll
        username = (site.config["medium_username"] || "").to_s.strip
        return if username.empty?
        url = "https://medium.com/feed/@" + username
        begin
          xml = Net::HTTP.get(URI(url))
          feed = Feedjira.parse(xml)
        rescue => e
          Jekyll.logger.warn "Medium posts:", "Fetch failed (#{e.message}), skipping"
          return
        end
        return unless feed&.entries
        feed.entries.each do |e|
          Jekyll.logger.debug "Medium:", "Title: #{e.title}, published on Medium #{e.url}"
          title = e[:title]
          content = e[:content]
          path = "./medium_posts/" + title + ".md"
          path = site.in_source_dir(path)
          doc = Jekyll::Document.new(path, { :site => site, :collection => jekyll_coll })
          doc.data['title'] = title
          doc.data['feed_content'] = content
          doc.data['medium_link'] = e.url
          doc.data['medium_pub_date'] = e[:pubDate]
          jekyll_coll.docs << doc
        end
      end
    end
  end
end
