class Home < ApplicationRecord

  belongs_to :user
  has_and_belongs_to_many :tags

  after_create do
    home = Home.find_by(id: self.id)
    hashtags = self.hashtag.scan(/[#＃][a-z|A-Z|가-힣|0-9|\w]+/)
    hashtags.uniq.map do |hashtag|
        tag = Tag.find_or_create_by(name: hashtag.downcase.delete('#'))
        home.tags << tag
    end
  end

  before_update do
    home = Home.find_by(id: self.id)
    home.tags.clear
    hashtags = self.hashtag.scan(/[#＃][a-z|A-Z|가-힣|0-9|\w]+/)
    hashtags.uniq.map do |hashtag|
        tag = Tag.find_or_create_by(name: hashtag.downcase.delete('#'))
        home.tags << tag
    end
  end

end
