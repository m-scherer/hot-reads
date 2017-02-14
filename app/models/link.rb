class Link < ApplicationRecord
  belongs_to :user

  def self.top_ten
    select('links.url, count(links.id) as counted').group('links.url').order('counted desc').limit(10)
  end
end
