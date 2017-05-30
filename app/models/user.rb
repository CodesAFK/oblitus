class User < ActiveRecord::Base

has_many :lists
has_many :items, through: :lists
has_secure_password

  def slug
    username.downcase.gsub(" ","-")
  end

  def self.find_by_slug(slug)
    User.all.find{|user| user.slug == slug}
  end
end