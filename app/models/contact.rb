class Contact < ActiveRecord::Base
  belongs_to :user

  validates :name, :surname, :email, presence: true
  validates :email, uniqueness: true
end
