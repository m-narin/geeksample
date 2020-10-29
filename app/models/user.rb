class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
       :recoverable, :rememberable, :validatable,
       :omniauthable, omniauth_providers: %i[google_oauth2]
  
  # クラスメソッドを作成します
  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      # deviseのuserカラムに name を追加している場合は以下のコメントアウトも追記します
      user.name = auth.info.name
      user.email = auth.info.email
      user.password = Devise.friendly_token[0,20]
    end
  end


  has_many :tweets, dependent: :destroy 
  has_many :likes, dependent: :destroy
  has_many :liked_tweets, through: :likes, source: :tweet
  has_many :comments, dependent: :destroy

  is_impressionable counter_cache: true

  def already_liked?(tweet)
    self.likes.exists?(tweet_id: tweet.id)
  end

  validates :name, presence: true 
  validates :profile, length: { maximum: 200 } 
end
