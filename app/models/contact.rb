class Contact < ActiveRecord::Base
  belongs_to :user

  validates :name, :surname, :email, :user, presence: true
  validates :email, uniqueness: true
  validates_inclusion_of :contact_type, :in => 0..2
end
