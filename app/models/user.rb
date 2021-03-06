class User < ActiveRecord::Base
  devise :invitable, :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable

  attr_accessible :name, :email, :password, :password_confirmation, :remember_me, :confirmed_at, :username, :bio, :website, :twitter, :public, :photo_cache

  mount_uploader :photo, PhotoUploader

  ROLES = %w(admin regular guest)

  validates_presence_of :email
  validates_uniqueness_of :name, :email, :username, case_sensitive: false

  validates :username, format: { with: /\A\w+\Z/i }, length: { in: 2..12 }, presence: true, uniqueness: true

  has_many :places
  has_many :invitations, class_name: 'User', as:  :invited_by

  has_many :place_requests_received, class_name: 'PlaceRequest', foreign_key: 'receiver_id'
  has_many :place_requests_sent, class_name: 'PlaceRequest', foreign_key: 'booker_id'
  has_many :comments
  
  scope :with_username, where("username is not null")
  scope :with_photo, where("photo is not null")

  # defining roles 
  def admin?
    self.role == "admin"
  end

  def regular?
    self.role == "regular"
  end

  def guest?
    self.role == "guest"
  end
  
  def invitation_accepted?
    self.invitation_accepted_at? or self.username or !self.regular?
  end
  
  def self.valid_attribute?(attr, params)
    mock = self.new( params )
    unless mock.valid?
      return ! mock.errors.has_key?(attr)
    end
    #true
  end
end
