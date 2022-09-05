class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :validatable, :omniauthable

  has_many :community_events
  has_many :donations
  has_many :report_new_likes
  has_many :report_news
  has_many :user_depositions
end
