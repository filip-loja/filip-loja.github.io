
module Jekyll
  module PostAliasFilter
    def post_alias(a , posts)
      tag_key = 'my_tag'

      posts_with_aliases = posts.select{ |post| post[tag_key] }
      target = posts_with_aliases.select{ |post| post[tag_key] == a }

      if target.length == 0
        raise ArgumentError, "[ alias not found: '" + a + "' ]"
      end

      if target.length > 1
        raise ArgumentError, "[ ambiguous alias: '" + a + "' ]"
      end

      target[0].url
    end
  end
end

Liquid::Template.register_filter(Jekyll::PostAliasFilter)
