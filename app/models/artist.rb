class Artist < ActiveRecord::Base
  has_many :songs
  has_many :genres, through: :songs

  def slug
    slug = self.name.downcase.strip.gsub(' ', '-').gsub(/[^\w-]/, '')
    # Artist.all.find_by(name: slug)
  end


  def self.find_by_slug(slug)
    Artist.all.find do |artist|
      artist.slug == slug
    end
  end

end
