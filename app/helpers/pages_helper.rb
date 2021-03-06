module PagesHelper
  
  #method that will parse a tweet and will transform text links to links
  def twitter_parser tweet
    
    #regex for tweet URL parser
    regex = %r{
    \b
    (
      (?: [a-z][\w-]+:
       (?: /{1,3} | [a-z0-9%] ) |
        www\d{0,3}[.] |
        [a-z0-9.\-]+[.][a-z]{2,4}/
      )
      (?:
       [^\s()<>]+ | \(([^\s()<>]+|(\([^\s()<>]+\)))*\)
      )+
      (?:
        \(([^\s()<>]+|(\([^\s()<>]+\)))*\) |
        [^\s`!()\[\]{};:'".,<>?«»“”‘’]
      )
    )
    }ix

    tweet.gsub(regex) do |url|
      "<a href='#{url}' target='_blank'>#{url}</a>"
    end.html_safe 
  end

  def tel_to(text)
    groups = text.to_s.scan(/(?:^\+)?\d+/)
    link_to text, "tel:#{groups.join '-'}"
  end
end
