class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :favorites
  has_many :favorite_users, through: :favorites, source: :favorited, source_type: 'User'

  acts_as_messageable

  def mailboxer_email(object)
      email
  end

  has_attached_file :picture,
                    :default_url => "/images/original/missing.png",
                    :styles => {
                      :thumb    => ['100x100#',  :jpg, :quality => 70],
                      :preview  => ['480x480#',  :jpg, :quality => 70],
                      :large    => ['600>',      :jpg, :quality => 70],
                      :retina   => ['1200>',     :jpg, :quality => 30]},
                    :convert_options => {
                      :thumb    => '-set colorspace sRGB -strip',
                      :preview  => '-set colorspace sRGB -strip',
                      :large    => '-set colorspace sRGB -strip',
                      :retina   => '-set colorspace sRGB -strip -sharpen 0x0.5'}
  validates_attachment :picture,
                       :presence => true,
                       :size => { :in => 0..10.megabytes },
                       :content_type => { :content_type => /^image\/(jpeg|png|gif|tiff)$/ }
end
