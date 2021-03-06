# coding: utf-8

namespace :twitter do
  desc "normal tweet"
  task :normal => :environment do
    setting_twitter
    movies_array = []
    movies_array.push(NiconicoPopular.where(:used => false).sample)
    movies_array.push(NiconicoPopular.where(:used => false).sample)
    movies_array.push(YoutubePopular.where(:used => false).sample)
    movies = movies_array.sample

    # つぶやき
    movie_info = "【" + movies.title + "】"
    popular_tweet = PopularSerif.all.sample.word + " \n"
    if update( popular_tweet + movie_info, movies.url)
      movies.used = true
      movies.save
    end
  end

  desc "new aoi movie"
  task :new => :environment do
    setting_twitter
    movies = TodayYoutube.where(:used => false).sample
    if movies == nil
      movies = TodayNiconico.where(:used => false).sample
    end

    next if movies.blank?
    next if !confirm_db(movies.url)
    # つぶやき
    movie_info = "【" + movies.title + "】"
    new_tweet = NewSerif.all.sample.word + "\n" + "（新着）"
    if update( new_tweet + movie_info, movies.url )
      movies.used = true
      movies.save
    end
  end


  desc "follower"
  task :follower => :environment do
    setting_twitter
    follower = @client.follower_ids().to_a
    friend = @client.friend_ids().to_a
    outgoing = @client.friendships_outgoing().to_a
    fan = follower - friend - outgoing
    fan.each do |f|
      @client.follow(f)
    end
  end

  private

  def setting_twitter
    @client = Twitter::REST::Client.new do |config|
      config.consumer_key       = Settings.twitter.consumer_key
      config.consumer_secret    = Settings.twitter.consumer_secret
      config.access_token        = Settings.twitter.oauth_token
      config.access_token_secret = Settings.twitter.oauth_token_secret
    end
  end
  def update(tweet, url)
    begin
      if (tweet + url).length > 140
        tweet = tweet[0..(140 - url.length)].to_s + url
      else
        tweet += url
      end
      tweet = (tweet.length > 140) ? tweet[0..139].to_s : tweet
      @client.update(tweet.chomp)
    rescue => e
      Rails.logger.error "<<twitter.rake::tweet.update ERROR : " + e.message + ">>"
      return false
    end
    return true
  end
end
