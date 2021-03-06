###
# Blog settings
###

# Time.zone = "UTC"

set :slim, { :pretty => true, :format => :html5, :sort_attrs => false }

activate :blog do |blog|
  # blog.prefix = "blog"
  # blog.permalink = ":year/:month/:day/:title.html"
  # blog.sources = ":year-:month-:day-:title.html"
  # blog.taglink = "tags/:tag.html"
  blog.layout = "page"
  # blog.summary_separator = /(READMORE)/
  # blog.summary_length = 250
  # blog.year_link = ":year.html"
  # blog.month_link = ":year/:month.html"
  # blog.day_link = ":year/:month/:day.html"
  # blog.default_extension = ".markdown"
  blog.tag_template = "tag.html"
  blog.calendar_template = "calendar.html"
  blog.paginate = false
end

activate :directory_indexes
page "/404.html", directory_index: false
page "/feed.xml", :layout => false

set :css_dir, "css"
set :js_dir, "js"
activate :livereload
configure :build do
end
