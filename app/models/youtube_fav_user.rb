class YoutubeFavUser < ActiveRecord::Base
  belongs_to :fav_youtube, :class_name => 'YoutubeMovie', :foreign_key => :youtube_movie_id
  belongs_to :fav_user, :class_name => 'User', :foreign_key => :user_id

  def self.recent(period=1.week.ago)
    to = Date.today
    if period.present?
      new_fav = self.where(created_at: period...to).order("created_at DESC")
    else
      new_fav = self.order("created_at DESC").all
    end
    movie_ids = new_fav.map{|r| r.youtube_movie_id }
    movie_ids.uniq!
    count=[]
    movie_ids.each do |id|
      movie = YoutubeMovie.find(id)
      count.push([movie, fav_count(id)]) unless movie.disabled
    end
    count.sort!{|a,b|
      b[1] <=> a[1]
    }
    #raise count.inspect
    return count
  end

  def self.fav_count(id)
    fav_movie = self.where(youtube_movie_id: id.to_i)
    return fav_movie.count
  end
end
