class Hero < ActiveRecord::Base
  self.table_name = "heroes"
  
  belongs_to :user
  belongs_to :wall_post
  
  def self.registerd_heroes_count
    Hero.count == 0 ?  0 : Hero.last.total
  end
  def self.registering(user)
    total_heroes = Hero.count == 0 ?  0 : Hero.last.total
    if user.wall_posts.count == 1
      total_heroes += 1
      Hero.create(total: total_heroes, user: user)
      total_heroes
    else
      false
    end
  end
end
