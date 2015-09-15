class Contact < ApplicationMailer
	default :from => 'contact@whereabouts.com'

	def user_contact_email(user)
		@user = user
		mail( 	:to => @user.email,
 				:subject => 'Información sobre tu reporte' )
	end
end