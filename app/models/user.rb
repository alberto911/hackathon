class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

	has_many :projects

	def has_joined?(project_id)
		@project_user = ProjectsUser.where("projects_users.user_id = ? and projects_users.project_id = ?", self.id, project_id)
		!@project_user.empty? 
	end

end
