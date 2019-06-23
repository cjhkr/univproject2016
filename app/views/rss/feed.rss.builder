#encoding: UTF-8

xml.instruct! :xml, :version => "1.0"
xml.rss :version => "2.0" do
  xml.channel do
    xml.title "축제 일정"
    xml.author "멋쟁이 사자처럼"
    xml.description "다른 대학의 축제는 어딨는지 궁금하시다고요? 특정 가수가 방문하는 축제만 알아보고 싶나요? 여기서 모두 검색해보세요"
    xml.link "https://univfestival.info"
    xml.language "kr"

    for article in @blog_articles
      xml.item do
        if article.title
          xml.title article.univ + " 축제 정보"
        else
          xml.title ""
        end
        xml.author "멋쟁이 사자처럼"
        xml.pubDate article.created_at.to_s(:rfc822)
        xml.link "https://univfestival.info/result/" # + article.id.to_s + "-" + article.alias
        xml.guid article.id

        text = article.text
		# if you like, do something with your content text here e.g. insert image tags.
		# Optional. I'm doing this on my website.
        if article.image.exists?
            image_url = article.image.url(:large)
            image_caption = article.image_caption
            image_align = ""
            image_tag = "
                <p><img src='" + image_url +  "' alt='" + image_caption + "' title='" + image_caption + "' align='" + image_align  + "' /></p>
              "
            text = text.sub('{image}', image_tag)
        end
        xml.description "<p>" + text + "</p>"

      end
    end
  end
end