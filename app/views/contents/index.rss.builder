xml.instruct! :xml, :version => '1.0'
xml.rss :version => '2.0' do
  xml.channel do
    xml.title 'DuoFold'
    xml.description 'Cattery'
    xml.link root_url
    xml.language I18n.t('locale')

    @contents.all.each do |content|
      xml.item do
        xml.title content.name
        xml.author 'DuoFold'
        xml.description content.body + '<hr>' + content.content_picts.map { |cp| image_tag(cp.pict.url(:thumbnail)) }.join
        xml.pubDate content.created_at.to_s(:rfc822)
        xml.link content_url(content)
        xml.guid content_url(content)
      end
    end
  end
end