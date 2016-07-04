class Contact < ActiveRecord::Base
  belongs_to :user
  has_many :phones, dependent: :destroy

  CONTACT_TYPES = ["Amigo", "Familiar", "Compañero"]

  has_attached_file :avatar
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/


  validates :name, :surname, :email, :user, presence: true
  validates :email, uniqueness: true
  validates_inclusion_of :contact_type, :in => 0..2
end
