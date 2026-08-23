# frozen_string_literal: true

module Jekyll
  class CategoryArchiveGenerator < Generator
    safe true
    priority :low

    def generate(site)
      site.categories.each do |category, posts|
        sorted = posts.sort_by { |post| post.date }.reverse
        site.pages << CategoryArchivePage.new(site, category, sorted)
      end
    end
  end

  class CategoryArchivePage < Page
    def initialize(site, category, posts)
      @site = site
      @base = site.source
      @dir = "feed/category"
      @name = "#{Jekyll::Utils.slugify(category)}.html"

      process(@name)
      slug = Jekyll::Utils.slugify(category)
      self.data = {
        "layout" => "category",
        "title" => category,
        "category" => category,
        "posts" => posts,
        "permalink" => "/feed/category/#{slug}/",
        "autogen" => true
      }
    end
  end
end
