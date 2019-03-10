
# https://tuananh.org/2014/08/04/writing-your-first-jekyll-plugin/
# https://stackoverflow.com/questions/16988190/jekyll-plugin-not-working-on-local-machine

module Jekyll
  module ToAgeFilter
    def to_age(input, placeholder, timestamp)
      year_in_seconds = 31556926
      age_in_seconds = Time.now.to_i - timestamp
      age_in_years = age_in_seconds / year_in_seconds
      input.sub! placeholder, age_in_years.to_s
    end
  end
end

Liquid::Template.register_filter(Jekyll::ToAgeFilter)