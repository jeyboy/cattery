feed_options = {
    language: I18n.t('locale'),
    url: contents_url(host: HOST)
}

atom_feed feed_options do |feed|
  feed.title 'DuoFold'
  feed.updated @contents.maximum(:created_at)

  @contents.all.each do |content|
    feed.entry content, {published: content.created_at, updated: content.updated_at} do |entry|
      entry.title content.name
      entry.content render(partial: 'contents/content_body', locals: {content: content}), type: 'html'

      content.content_picts.each do |cp|
        entry.content image_tag(cp.pict.url(:thumbnail)), type: 'html'
      end

      entry.author do |author|
        author.name 'DuoFold'
      end

      entry.url content_url(content)

      # entry.summary raw(truncate(content.body, length: 120))
    end
  end
end