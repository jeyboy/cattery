feed_options = {
    language: I18n.t('locale'),
    url: contents_url(host: HOST)
}

atom_feed feed_options do |feed|
  feed.title 'DuoFold'
  feed.updated @contents.maximum(:created_at)

  @contents.each do |content|
    feed.entry content, {published: content.created_at, updated: content.updated_at} do |entry|
      entry.title content.title
      entry.content content.body, type: 'html'

      # entry.content image_tag(content.image.url(:thumb)), type: 'html'

      entry.author do |author|
        author.name 'DuoFold'
      end

      entry.url content_url(content)

      entry.summary truncate(content.body, length: 120).html_safe
    end
  end
end