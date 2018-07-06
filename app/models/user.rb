class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise  :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable ,:invitable, :invite_for => 2.weeks

	before_invitation_created :email_admins
	 after_invitation_accepted :email_invited_by


	  has_many :invitations, :class_name => 'User', :as => :invited_by


	def email_admins
	  # ...
	end

	def email_invited_by
	  # ...
	end
end
