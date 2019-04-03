class Genre < ActiveRecord::Base
  has_many :song_genres
  has_many :songs, through: :song_genres
  has_many :artists, through: :songs

  def slug
    slug = self.name.downcase.strip.gsub(' ', '-').gsub(/[^\w-]/, '')
    # Artist.all.find_by(name: slug)
end

  def self.display_all_genres(genre_array)
    my_g = genre_array.each{|genre| puts genre.name}

  end

  def self.find_by_slug(slug)
    Genre.all.find do |genre|
      genre.slug == slug
    end
  end
# binding.pry

end
