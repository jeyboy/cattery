xml.instruct! :xml, :version => '1.0'
xml.rss :version => '2.0' do
  xml.channel do
    xml.title 'DuoFold'
    xml.description 'Cattery'
    xml.link root_url

    @contents.all.each do |content|
      xml.item do
        xml.title content.name
        xml.description content.body
        xml.pubDate content.created_at.to_s(:rfc822)
        xml.link content_url(content)
        xml.guid content_url(content)
      end
    end
  end
end