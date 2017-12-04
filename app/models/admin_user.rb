class AdminUser < ApplicationRecord
  has_many :research_interests
  has_many :academic_backgrounds
  has_many :research_experiences
  has_many :paper_and_publications
  has_many :award_and_fellowships
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, 
         :recoverable, :rememberable, :trackable, :validatable
end
