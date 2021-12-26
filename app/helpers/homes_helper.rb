module HomesHelper
  def render_with_hashtags(hashtag)
    hashtag.gsub(/[#＃][a-z|A-Z|가-힣|0-9|\w]+/){|word| link_to word, "/homes/hashtag/#{word.delete('#')}"}.html_safe
  end 
end
